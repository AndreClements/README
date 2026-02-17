# install-plex-fonts.ps1 — Download and install IBM Plex Serif + Sans for XeLaTeX
# IBM Plex Mono is already installed system-wide.
# Usage: powershell -ExecutionPolicy Bypass -File .\tools\install-plex-fonts.ps1

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$fontsDir = [System.IO.Path]::Combine($env:LOCALAPPDATA, 'Microsoft', 'Windows', 'Fonts')
if (-not (Test-Path $fontsDir)) { New-Item -ItemType Directory -Path $fontsDir | Out-Null }

$baseUrl = 'https://raw.githubusercontent.com/IBM/plex/master/packages'

$fonts = @(
    # Serif
    @{ Family = 'plex-serif'; File = 'IBMPlexSerif-Regular.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-serif'; File = 'IBMPlexSerif-Italic.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-serif'; File = 'IBMPlexSerif-SemiBold.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-serif'; File = 'IBMPlexSerif-SemiBoldItalic.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-serif'; File = 'IBMPlexSerif-Bold.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-serif'; File = 'IBMPlexSerif-BoldItalic.ttf'; Sub = 'fonts/complete/ttf' },
    # Sans
    @{ Family = 'plex-sans'; File = 'IBMPlexSans-Regular.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-sans'; File = 'IBMPlexSans-Italic.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-sans'; File = 'IBMPlexSans-SemiBold.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-sans'; File = 'IBMPlexSans-SemiBoldItalic.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-sans'; File = 'IBMPlexSans-Bold.ttf'; Sub = 'fonts/complete/ttf' },
    @{ Family = 'plex-sans'; File = 'IBMPlexSans-BoldItalic.ttf'; Sub = 'fonts/complete/ttf' }
)

$installed = 0
$failed = 0

foreach ($font in $fonts) {
    $url = "$baseUrl/$($font.Family)/$($font.Sub)/$($font.File)"
    $destPath = Join-Path $fontsDir $font.File

    if (Test-Path $destPath) {
        Write-Host "  SKIP $($font.File) (already exists)" -ForegroundColor Yellow
        $installed++
        continue
    }

    Write-Host "  Downloading $($font.File)..." -NoNewline
    try {
        Invoke-WebRequest -Uri $url -OutFile $destPath -UseBasicParsing
        # Register in user font registry
        $regPath = 'HKCU:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts'
        $fontName = [System.IO.Path]::GetFileNameWithoutExtension($font.File)
        Set-ItemProperty -Path $regPath -Name "$fontName (TrueType)" -Value $destPath -ErrorAction SilentlyContinue
        Write-Host " OK" -ForegroundColor Green
        $installed++
    } catch {
        Write-Host " FAILED: $($_.Exception.Message)" -ForegroundColor Red
        $failed++
    }
}

Write-Host "`nInstalled: $installed, Failed: $failed" -ForegroundColor Cyan
Write-Host "Font directory: $fontsDir" -ForegroundColor Cyan
Write-Host "Note: restart applications for new fonts to appear." -ForegroundColor Yellow
