# flatten-md.ps1  — curated repo -> single Markdown "book" (+ optional HTML)
param(
  [string]$Root = (Get-Location).Path,
  [string]$OutName = $("README__flattened_{0}.md" -f (Get-Date -Format "yyyyMMdd_HHmmss")),
  [string[]]$ExcludeDirNames = @(".git","node_modules",".vs",".vscode","vendor"),
  [bool]$SectionHeaders = $true,     # write section dividers like "## Onboarding"
  [bool]$StripPathHeader = $true,    # remove a first line that just echoes a path/filename
  [bool]$FrontMatter = $true,        # write YAML metadata (Pandoc will use this)
  [string]$Title = "README - Flattened Markdown",
  [string]$Author = "Andre S Clements",  # keep ASCII to avoid script parse issues
  [string]$Lang = "en",
  [int]$TocDepth = 3,
  [bool]$MakeHtml = $true            # also emit an .html via Pandoc if available
)

function Normalize-Path([string]$p) { (Get-Item -LiteralPath $p).FullName }
function Get-Relative([string]$full,[string]$root){ ".\" + $full.Substring($root.Length).TrimStart('\','/') -replace '/','\' }
function Should-Include($fi,$root,$ex){
  $rel = $fi.FullName.Substring($root.Length).TrimStart('\','/')
  foreach($seg in ($rel -split '[\\/]')){ if($ex -contains $seg){ return $false } }
  return $true
}
function Read-FileUtf8([string]$path){
  $bytes=[System.IO.File]::ReadAllBytes($path)
  [System.Text.Encoding]::UTF8.GetString($bytes)
}
function Maybe-StripPathHeader([string]$text){
  if(-not $StripPathHeader){return $text}
  $lines = $text -split "`r?`n",0
  if($lines.Length -gt 0 -and ($lines[0] -match '^\s*`?([A-Za-z0-9_\-./\\]+\.md)`?\s*$')){
    return ($lines[1..($lines.Length-1)] -join "`r`n")
  }
  return $text
}
function Slug([string]$s){
  $t = $s.ToLowerInvariant()
  $t = [regex]::Replace($t,'[^a-z0-9]+','-')
  $t = $t.Trim('-')
  return $t
}

Push-Location $Root
try{
  $rootNorm = Normalize-Path (Get-Location)
  $outPath  = Join-Path $rootNorm $OutName
  if(Test-Path $outPath){ Remove-Item $outPath -Force -ErrorAction SilentlyContinue }

  $enc = New-Object System.Text.UTF8Encoding($false) # UTF-8 (no BOM)
  $w   = New-Object System.IO.StreamWriter($outPath,$false,$enc)

  # Track emitted files; pre-add the output file so we never try to read it.
  $emitted = New-Object 'System.Collections.Generic.HashSet[string]'
  $null = $emitted.Add((Normalize-Path $outPath))

  # Gather all .md files (excluding bulky/system dirs AND the output file itself)
  $all = Get-ChildItem -Recurse -File -Filter *.md |
    Where-Object {
      (Should-Include $_ $rootNorm $ExcludeDirNames) -and
      ($_.FullName -ne $outPath)
    } |
    ForEach-Object {
      $rel = $_.FullName.Substring($rootNorm.Length).TrimStart('\','/')
      [PSCustomObject]@{
        Info     = $_
        Full     = $_.FullName
        Rel      = ($rel -replace '/','\')
        RelLower = ($rel -replace '/','\').ToLowerInvariant()
        IsRoot   = ($_.DirectoryName -eq $rootNorm)
        Name     = $_.Name
      }
    }

  # Predeclared section plan (for Contents)
  $sectionPlan = @(
    "Onboarding","Root","Concepts","Models","Essays","Methods",
    "Protocols","Landscapifications","Projects","Templates","Ideacubator","Misc"
  )

  # Front matter (Pandoc-friendly)
  if($FrontMatter){
    $w.WriteLine("---")
    $w.WriteLine("title: ""{0}""" -f $Title)
    $w.WriteLine("author: ""{0}""" -f $Author)
    $w.WriteLine("lang: {0}" -f $Lang)
    $w.WriteLine("date: ""{0}""" -f (Get-Date -Format 'yyyy-MM-dd'))
    $w.WriteLine("toc: true")
    $w.WriteLine("toc-depth: {0}" -f $TocDepth)
    $w.WriteLine("number-sections: true")
    $w.WriteLine("---")
    $w.WriteLine()
  }

  # Top title & metadata
  $w.WriteLine("# {0}" -f $Title)
  $w.WriteLine()
  $w.WriteLine("> Root: {0}  " -f (Get-Location))
  $w.WriteLine("> When: {0}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'))
  $w.WriteLine()

  # Inline Contents
  $w.WriteLine("## Contents")
  foreach($sec in $sectionPlan){
    $w.WriteLine("- [$sec](#$(Slug $sec))")
  }
  $w.WriteLine()

  function Begin-Section([string]$name){
    if($SectionHeaders){
      $w.WriteLine('<a id="{0}"></a>' -f (Slug $name))
      $w.WriteLine("## {0}" -f $name)
      $w.WriteLine()
    }
  }

  function Emit-File($fo){
    if($emitted.Contains($fo.Full)){ return }
    $content = Read-FileUtf8 $fo.Full
    $content = Maybe-StripPathHeader $content

    # If the file DOES NOT start with a Markdown H1/H2, add a chapter heading.
    if(-not ($content -match '^\s{0,3}#{1,2}\s')){
      $nice = ($fo.Rel -replace '^[.\\]+','')
      $w.WriteLine("### {0}" -f $nice)
      $w.WriteLine()
    }

    $w.Write($content)
    if(-not $content.EndsWith("`n")){ $w.WriteLine() }
    $w.WriteLine()
    $emitted.Add($fo.Full) | Out-Null
  }

  function Emit-Rel([string]$rel){
    $p = Join-Path $rootNorm $rel
    if(Test-Path -LiteralPath $p){
      $obj = $all | Where-Object { $_.Full -eq (Normalize-Path $p) } | Select-Object -First 1
      if($obj){ Emit-File $obj }
    }
  }

  function Emit-Matches([string]$section,[string[]]$patterns){
    Begin-Section $section
    $matches = $all | Where-Object {
      foreach($p in $patterns){
        $wc = New-Object System.Management.Automation.WildcardPattern(($p -replace '/','\'),'IgnoreCase')
        if($wc.IsMatch($_.Rel)){ return $true }
      }
      return $false
    } | Sort-Object RelLower
    foreach($m in $matches){ Emit-File $m }
  }

  # ---- Curated arc ----
  Begin-Section "Onboarding"
  foreach($p in @(
    "ONBOARDING\README_quickstart.md",
    "README.md",
    "CONCEPTS\GLOSSARY.md",
    "CONCEPTS\CONCEPT_SELF.md"
  )){ Emit-Rel $p }

  Begin-Section "Root"
  $all | Where-Object { $_.IsRoot } | Sort-Object Name | ForEach-Object { Emit-File $_ }

  Emit-Matches "Concepts"           @("CONCEPTS\*.md","docs\concepts\*.md")
  Emit-Matches "Models"             @("docs\models\*.md")
  Emit-Matches "Essays"             @("docs\essays\*.md")
  Emit-Matches "Methods"            @("docs\methods\*.md")
  Emit-Matches "Protocols"          @("docs\protocols\*.md")
  Emit-Matches "Landscapifications" @("docs\landscapifications\*.md")
  Emit-Matches "Projects"           @("projects\*.md")
  Emit-Matches "Templates"          @("templates\*.md")
  Emit-Matches "Ideacubator"        @("ideacubator\*.md")

  Begin-Section "Misc"
  $all | Where-Object { -not $emitted.Contains($_.Full) } | Sort-Object RelLower | ForEach-Object { Emit-File $_ }

  $w.Flush(); $w.Close()

  Write-Host ("Wrote: {0}" -f $outPath)

  if($MakeHtml){
    $pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
    if($pandoc){
      $htmlOut = [IO.Path]::ChangeExtension($outPath,".html")
      $resPath = ($rootNorm + ";docs;docs/assets;CONCEPTS;projects;templates;ideacubator;ONBOARDING")
      & $pandoc.Source $outPath `
        -o $htmlOut --standalone --toc --toc-depth=$TocDepth --number-sections `
        --metadata=title:"$Title" --resource-path="$resPath"
      Write-Host ("HTML: {0}" -f $htmlOut)
    }else{
      Write-Warning "Pandoc not found in PATH; skipping HTML generation."
    }
  }

}
finally{ Pop-Location }
