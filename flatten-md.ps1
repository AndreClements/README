param(
  [string]$Root = (Get-Location).Path,
  [string]$OutName = $("README__flattened_{0}.txt" -f (Get-Date -Format "yyyyMMdd_HHmmss")),
  # Add/remove names here if you want to skip bulky/system folders
  [string[]]$ExcludeDirNames = @(".git","node_modules",".vs",".vscode","vendor")
)

# Go to root and prepare output
Push-Location $Root
try {
  $OutPath = Join-Path -Path (Get-Location) -ChildPath $OutName
  if (Test-Path $OutPath) { Remove-Item $OutPath -Force -ErrorAction SilentlyContinue }

  # Header
  $head = "FLATTENED MARKDOWN DUMP`r`nRoot: $(Get-Location)`r`nWhen: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')`r`n"
  $head | Out-File -FilePath $OutPath -Encoding UTF8

  # Build an exclusion regex like \\(.git|node_modules|.vs|.vscode|vendor)\\
  $escaped = $ExcludeDirNames | ForEach-Object { [regex]::Escape($_) }
  $exRe = '\\(' + ($escaped -join '|') + ')(\\|$)'

  # Enumerate, sort, and append content with markers
  Get-ChildItem -Recurse -File -Filter *.md |
    Where-Object { $_.FullName -notmatch $exRe } |
    Sort-Object FullName |
    ForEach-Object {
      $rel = Resolve-Path -LiteralPath $_.FullName -Relative  # e.g. .\docs\protocols\file.md
      # BEGIN marker
      @"
=== BEGIN FILE: $rel ===
"@ | Out-File -FilePath $OutPath -Append -Encoding UTF8

      # File content (raw to preserve formatting)
      (Get-Content -LiteralPath $_.FullName -Raw) | Out-File -FilePath $OutPath -Append -Encoding UTF8

      # END marker (blank line after for readability)
      @"

=== END FILE: $rel ===

"@ | Out-File -FilePath $OutPath -Append -Encoding UTF8
    }

  Write-Host ("Wrote: {0}" -f $OutPath)
}
finally {
  Pop-Location
}
