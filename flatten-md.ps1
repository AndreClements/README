# flatten-md.ps1 — curated repo -> single Markdown "book" (+ optional HTML)
# usage: powershell -ExecutionPolicy Bypass -File .\flatten-md.ps1

[CmdletBinding()]
param(
  [string]$Root = (Get-Location).Path,
  [string]$OutName = ("README__flattened_{0}.md" -f (Get-Date -Format "yyyyMMdd_HHmmss")),
  [string[]]$ExcludeDirNames = @(".git","node_modules",".vs",".vscode","vendor"),
  [string[]]$ExcludeFilePatterns = @("README__flattened*.md","README__flattened*.html"),
  [string[]]$ContentExtensions = @(
    'md','markdown','mdx',
    'ps1','psm1','psd1',
    'pl','pm',
    'php',
    'js','jsx','ts','tsx',
    'css','scss','less',
    'html','htm','xml',
    'json','yaml','yml','toml','ini','cfg','conf',
    'py','rb','go','rs','java','kt','c','h','cpp','hpp','cs',
    'sh','bash','zsh','bat','cmd',
    'sql','r','lua',
    'csv','tsv','txt'
  ),
  [bool]$EmitContent = $true,        # write content for "code/text" files (extensions above)
  [bool]$ListNonContent = $true,     # list non-code assets (images, pdfs, etc.) by filename
  [bool]$SectionHeaders = $true,     # write section dividers like "## Onboarding"
  [bool]$StripPathHeader = $true,    # remove a first line that just echoes a path/filename
  [bool]$FrontMatter = $true,        # write YAML metadata (Pandoc will use this)
  [string]$Title = "README - Flattened Markdown",
  [string]$Author = "Andre S Clements",
  [string]$Lang = "en",
  [int]$TocDepth = 3,
  [bool]$MakeHtml = $true            # also emit an .html via Pandoc if available
)

# ---------------- FUNCTIONS ----------------

function Resolve-FullPath([string]$p) {
  (Get-Item -LiteralPath $p).FullName
}

function Should-Include(
  [System.IO.FileInfo]$fileInfo,
  [string]$rootPath,
  [string[]]$excludeDirs,
  [string[]]$excludeFilePatterns
){
  $relativePath = $fileInfo.FullName.Substring($rootPath.Length).TrimStart('\','/') -replace '\\','/'
  foreach($segment in ($relativePath -split '/')){
    if($excludeDirs -contains $segment){ return $false }
  }
  foreach($pattern in $excludeFilePatterns){
    $wc = New-Object System.Management.Automation.WildcardPattern($pattern,'IgnoreCase')
    if($wc.IsMatch($fileInfo.Name) -or $wc.IsMatch($relativePath)){ return $false }
  }
  return $true
}

function Read-FileUtf8([string]$path){
  $bytes = [System.IO.File]::ReadAllBytes($path)
  [System.Text.Encoding]::UTF8.GetString($bytes)
}

function Maybe-StripPathHeader([string]$text,[bool]$shouldStrip){
  if(-not $shouldStrip){ return $text }
  # split on CRLF or LF safely (regex uses \r and \n)
  $lines = $text -split '\r?\n'
  # accept optional backticks using \x60 to avoid PS backtick escaping issues
  if($lines.Length -gt 0 -and ($lines[0] -match '^\s*\x60?([A-Za-z0-9_\-./\\]+\.md)\x60?\s*$')){
    if($lines.Length -gt 1){ return ($lines[1..($lines.Length-1)] -join [Environment]::NewLine) }
    return ""
  }
  return $text
}

function Slug([string]$s){
  $t = $s.ToLowerInvariant()
  $t = [regex]::Replace($t,'[^a-z0-9]+','-')
  $t = $t.Trim('-')
  return $t
}

function Is-ContentFile($fileObject,[string[]]$extensions){
  if($fileObject.Ext){ return $extensions -contains $fileObject.Ext }
  return ($fileObject.Name -match '^(license|makefile)$')
}

function Write-Section([string]$name,[System.IO.StreamWriter]$writer,[bool]$writeHeaders){
  if($writeHeaders){
    $writer.WriteLine('<a id="{0}"></a>' -f (Slug $name))
    $writer.WriteLine("## {0}" -f $name)
    $writer.WriteLine()
  }
}

function Emit-File(
  $fileObject,
  [System.IO.StreamWriter]$writer,
  [System.Collections.Generic.HashSet[string]]$emittedSet,
  [string[]]$contentExts,
  [bool]$emitContent,
  [bool]$shouldListNonContent,
  [bool]$shouldStripHeader
){
  if($emittedSet.Contains($fileObject.Full)){ return }

  $isContent = Is-ContentFile $fileObject $contentExts

  if($isContent -and $emitContent){
    $content = Read-FileUtf8 $fileObject.Full
    $content = Maybe-StripPathHeader $content $shouldStripHeader
    $trimmed = $content.Trim()

    if(-not [string]::IsNullOrWhiteSpace($trimmed)){
      if(-not ($trimmed -match '^\s{0,3}#{1,2}\s')){
        $nice = ($fileObject.Rel -replace '^[./]+','')
        $writer.WriteLine("### {0}" -f $nice)
        $writer.WriteLine()
      }
      $writer.WriteLine($trimmed)
      $writer.WriteLine()
    }
  } elseif ($shouldListNonContent) {
    $nice = ($fileObject.Rel -replace '^[./]+','')
    $writer.WriteLine("- `{0}`" -f $nice)
  }

  $null = $emittedSet.Add($fileObject.Full)
}

function Emit-Rel(
  [string]$relativePath,
  [System.IO.StreamWriter]$writer,
  $allFiles,
  [System.Collections.Generic.HashSet[string]]$emittedSet,
  [PSCustomObject]$helpers
){
  $p = Join-Path $helpers.RootPath $relativePath
  if(Test-Path -LiteralPath $p){
    $normalized = Resolve-FullPath $p
    $obj = $allFiles | Where-Object { $_.Full -eq $normalized } | Select-Object -First 1
    if($obj){
      Emit-File $obj $writer $emittedSet $helpers.ContentExtensions $helpers.EmitContent $helpers.ListNonContent $helpers.StripPathHeader
    }
  }
}

function Emit-Matches(
  [string]$section,
  [string[]]$patterns,
  [System.IO.StreamWriter]$writer,
  $allFiles,
  [System.Collections.Generic.HashSet[string]]$emittedSet,
  [PSCustomObject]$helpers
){
  Write-Section $section $writer $helpers.SectionHeaders
  $matches = $allFiles | Where-Object {
    $rel = $_.Rel
    foreach($p in $patterns){
      $wc = New-Object System.Management.Automation.WildcardPattern($p,'IgnoreCase')
      if($wc.IsMatch($rel)){ return $true }
    }
    return $false
  } | Sort-Object RelLower

  foreach($m in $matches){
    Emit-File $m $writer $emittedSet $helpers.ContentExtensions $helpers.EmitContent $helpers.ListNonContent $helpers.StripPathHeader
  }
  if($helpers.ListNonContent -and $matches.Count -gt 0){ $writer.WriteLine() }
}

# ---------------- MAIN ----------------

Push-Location $Root
try{
  $rootNorm = Resolve-FullPath (Get-Location)
  $outPath  = Join-Path $rootNorm $OutName
  if(Test-Path $outPath){ Remove-Item $outPath -Force -ErrorAction SilentlyContinue }

  $enc = New-Object System.Text.UTF8Encoding($false) # UTF-8 (no BOM)
  $w   = New-Object System.IO.StreamWriter($outPath,$false,$enc)

  $emitted = New-Object 'System.Collections.Generic.HashSet[string]'
  $null = $emitted.Add((Resolve-FullPath $outPath))

  # Gather ALL files (decide later whether to print content or just list)
  $all = Get-ChildItem -Recurse -File |
    Where-Object { (Should-Include $_ $rootNorm $ExcludeDirNames $ExcludeFilePatterns) -and ($_.FullName -ne $outPath) } |
    ForEach-Object {
      $rel = $_.FullName.Substring($rootNorm.Length).TrimStart('\','/') -replace '\\','/'
      [PSCustomObject]@{
        Info     = $_
        Full     = $_.FullName
        Rel      = $rel
        RelLower = $rel.ToLowerInvariant()
        IsRoot   = ($_.DirectoryName -eq $rootNorm)
        Name     = $_.Name
        Ext      = [IO.Path]::GetExtension($_.FullName).TrimStart('.').ToLowerInvariant()
      }
    }

  $sectionPlan = @(
    'Onboarding','Root','Concepts','Models','Essays','Methods',
    'Protocols','Landscapifications','Projects','Templates','Ideacubator','Misc'
  )

  if($FrontMatter){
    $w.WriteLine("---")
    $w.WriteLine('title: "{0}"' -f $Title)
    $w.WriteLine('author: "{0}"' -f $Author)
    $w.WriteLine("lang: {0}" -f $Lang)
    $w.WriteLine('date: "{0}"' -f (Get-Date -Format 'yyyy-MM-dd'))
    $w.WriteLine("toc: true")
    $w.WriteLine("toc-depth: {0}" -f $TocDepth)
    $w.WriteLine("number-sections: true")
    $w.WriteLine("---")
    $w.WriteLine()
  }

  $w.WriteLine("# {0}" -f $Title)
  $w.WriteLine()
  $w.WriteLine("> Root: {0}  " -f (Get-Location))
  $w.WriteLine("> When: {0}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'))
  $w.WriteLine()

  $w.WriteLine("## Contents")
  foreach($sec in $sectionPlan){
    $w.WriteLine("- [{0}](#{1})" -f $sec,(Slug $sec))
  }
  $w.WriteLine()

  $emitHelpers = [PSCustomObject]@{
    RootPath          = $rootNorm
    ContentExtensions = $ContentExtensions
    EmitContent       = $EmitContent
    ListNonContent    = $ListNonContent
    SectionHeaders    = $SectionHeaders
    StripPathHeader   = $StripPathHeader
  }

  # ---- Curated Arc ----

  Write-Section "Onboarding" $w $SectionHeaders
  foreach($p in @(
    "ONBOARDING/README_quickstart.md",
    "README.md",
    "CONCEPTS/GLOSSARY.md",
    "CONCEPTS/CONCEPT_SELF.md"
  )){
    Emit-Rel $p $w $all $emitted $emitHelpers
  }

  Write-Section "Root" $w $SectionHeaders
  $all | Where-Object { $_.IsRoot } | Sort-Object Name | ForEach-Object {
    Emit-File $_ $w $emitted $ContentExtensions $EmitContent $ListNonContent $StripPathHeader
  }

  Emit-Matches "Concepts"           @("CONCEPTS/*","docs/concepts/*")         $w $all $emitted $emitHelpers
  Emit-Matches "Models"             @("docs/models/*")                         $w $all $emitted $emitHelpers
  Emit-Matches "Essays"             @("docs/essays/*")                         $w $all $emitted $emitHelpers
  Emit-Matches "Methods"            @("docs/methods/*")                        $w $all $emitted $emitHelpers
  Emit-Matches "Protocols"          @("docs/protocols/*")                      $w $all $emitted $emitHelpers
  Emit-Matches "Landscapifications" @("docs/landscapifications/*")             $w $all $emitted $emitHelpers
  Emit-Matches "Projects"           @("projects/*")                            $w $all $emitted $emitHelpers
  Emit-Matches "Templates"          @("templates/*")                           $w $all $emitted $emitHelpers
  Emit-Matches "Ideacubator"        @("ideacubator/*")                         $w $all $emitted $emitHelpers

  Write-Section "Misc" $w $SectionHeaders
  $all | Where-Object { -not $emitted.Contains($_.Full) } | Sort-Object RelLower | ForEach-Object {
    Emit-File $_ $w $emitted $ContentExtensions $EmitContent $ListNonContent $StripPathHeader
  }

  $w.Flush(); $w.Close()
  Write-Host ("Wrote: {0}" -f $outPath)

  if($MakeHtml){
    $pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
    if($pandoc){
      $htmlOut = [IO.Path]::ChangeExtension($outPath,".html")
      $resPathList = @($rootNorm,"docs","docs/assets","CONCEPTS","projects","templates","ideacubator","ONBOARDING")
      $resPathArg  = ($resPathList -join [IO.Path]::PathSeparator)
      $args = @(
        $outPath,
        '-o', $htmlOut,
        '--standalone',
        '--toc',
        ("--toc-depth={0}" -f $TocDepth),
        '--number-sections',
        ("--metadata=title:{0}" -f $Title),
        ("--resource-path={0}" -f $resPathArg)
      )
      & $pandoc.Source @args
      Write-Host ("HTML: {0}" -f $htmlOut)
    } else {
      Write-Warning "Pandoc not found in PATH; skipping HTML generation."
    }
  }

}
finally{
  Pop-Location
}
