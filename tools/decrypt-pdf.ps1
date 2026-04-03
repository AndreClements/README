# decrypt-pdf.ps1 - Decrypt password-protected PDFs via qpdf
# Shared tool for use across projects (Personal, SAFFCA, etc.)
#
# Usage:
#   powershell -ExecutionPolicy Bypass -File .\tools\decrypt-pdf.ps1 -InputFile path\to\encrypted.pdf
#   powershell -ExecutionPolicy Bypass -File .\tools\decrypt-pdf.ps1 -InputFile path\to\encrypted.pdf -Password "custom"
#   powershell -ExecutionPolicy Bypass -File .\tools\decrypt-pdf.ps1 -InputFile path\to\folder -Batch
#
# Passwords loaded from .private/passwords.env (gitignored), then environment variables.
# See .private/passwords.env for known conventions.
#
# Requires: qpdf (winget install qpdf.qpdf)

[CmdletBinding()]
param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$InputFile,

    [Parameter(Mandatory=$false)]
    [string]$OutputFile,

    [Parameter(Mandatory=$false)]
    [string]$Password,

    [Parameter(Mandatory=$false)]
    [switch]$Batch,

    [Parameter(Mandatory=$false)]
    [switch]$InPlace,

    [Parameter(Mandatory=$false)]
    [string[]]$Passwords
)

# --- Resolve qpdf ---
$qpdf = Get-Command qpdf -ErrorAction SilentlyContinue
if (-not $qpdf) {
    $qpdf = Get-Command "C:\Program Files\qpdf 12.3.2\bin\qpdf.exe" -ErrorAction SilentlyContinue
}
if (-not $qpdf) {
    # Search Program Files for any qpdf version
    $found = Get-ChildItem "C:\Program Files" -Filter "qpdf.exe" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($found) { $qpdf = $found.FullName } else {
        Write-Error "qpdf not found. Install with: winget install qpdf.qpdf"
        exit 1
    }
}
$qpdfPath = if ($qpdf -is [System.Management.Automation.ApplicationInfo]) { $qpdf.Source } else { "$qpdf" }

# --- Password list ---
# Build candidate list: explicit password first, then .private/passwords.env, then environment
$candidatePasswords = @()
if ($Password) { $candidatePasswords += $Password }
if ($Passwords) { $candidatePasswords += $Passwords }
# Load from .private/passwords.env (gitignored)
$envFile = Join-Path $PSScriptRoot "../.private/passwords.env"
if (Test-Path $envFile) {
    Get-Content $envFile | Where-Object { $_ -match '^\s*[A-Z]' } | ForEach-Object {
        $val = ($_ -split '=', 2)[1].Trim()
        if ($val) { $candidatePasswords += $val }
    }
}
# Fall back to environment variables if set
@($env:NEDBANK_PDF_ID, $env:NEDBANK_ACCOUNT) | Where-Object { $_ -and $_ -ne "" } | ForEach-Object {
    $candidatePasswords += $_
}
# Deduplicate
$candidatePasswords = $candidatePasswords | Select-Object -Unique

function Decrypt-SinglePdf {
    param([string]$Source, [string]$Destination)

    # Check if already unencrypted
    $check = & $qpdfPath --requires-password "$Source" 2>&1
    if ($LASTEXITCODE -eq 2) {
        Write-Host "  Already unencrypted: $(Split-Path $Source -Leaf)" -ForegroundColor DarkGray
        if ($Source -ne $Destination) { Copy-Item $Source $Destination }
        return $true
    }

    foreach ($pw in $candidatePasswords) {
        $masked = $pw.Substring(0, [Math]::Min(4, $pw.Length)) + "..."
        & $qpdfPath --password="$pw" --decrypt "$Source" "$Destination" 2>$null
        if ($LASTEXITCODE -eq 0) {
            Write-Host "  Decrypted: $(Split-Path $Source -Leaf) (password: $masked)" -ForegroundColor Green
            return $true
        }
    }

    Write-Warning "  FAILED: $(Split-Path $Source -Leaf) - no matching password"
    return $false
}

# --- Main ---
if ($Batch) {
    # Process all PDFs in directory
    $dir = if (Test-Path $InputFile -PathType Container) { $InputFile } else { Split-Path $InputFile }
    $pdfs = Get-ChildItem $dir -Filter "*.pdf"
    $success = 0; $fail = 0
    foreach ($pdf in $pdfs) {
        if ($pdf.Name -like "_decrypted_*") { continue }
        $dest = if ($InPlace) {
            $tempPath = Join-Path $dir "_temp_$($pdf.Name)"
            $tempPath
        } else {
            Join-Path $dir "_decrypted_$($pdf.Name)"
        }
        $result = Decrypt-SinglePdf -Source $pdf.FullName -Destination $dest
        if ($result -and $InPlace) {
            Move-Item $dest $pdf.FullName -Force
        }
        if ($result) { $success++ } else { $fail++ }
    }
    Write-Host "`n$success decrypted, $fail failed out of $($pdfs.Count) PDFs"
} else {
    # Single file
    if (-not (Test-Path $InputFile)) {
        Write-Error "File not found: $InputFile"
        exit 1
    }
    if (-not $OutputFile) {
        $dir = Split-Path $InputFile
        $name = Split-Path $InputFile -Leaf
        $OutputFile = if ($InPlace) { $InputFile } else { Join-Path $dir "_decrypted_$name" }
    }
    $tempDest = if ($InPlace) { Join-Path (Split-Path $InputFile) "_temp_decrypt_$([guid]::NewGuid().ToString('N').Substring(0,8)).pdf" } else { $OutputFile }
    $result = Decrypt-SinglePdf -Source $InputFile -Destination $tempDest
    if ($result -and $InPlace) {
        Move-Item $tempDest $InputFile -Force
    }
    if (-not $result) { exit 1 }
}
