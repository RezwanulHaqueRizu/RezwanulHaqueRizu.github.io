# GitHub Pages Deployment Script
# Portfolio Website - Quick Deploy

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "Portfolio Website Deployment" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""

# Check if in correct directory
$currentDir = Get-Location
if (!(Test-Path "_config.yml")) {
    Write-Host "ERROR: _config.yml not found!" -ForegroundColor Red
    Write-Host "Please run this script from your project root directory." -ForegroundColor Yellow
    exit 1
}

Write-Host "Step 1: Checking Git status..." -ForegroundColor Green
git status

Write-Host ""
Write-Host "Step 2: Which GitHub username do you want to use?" -ForegroundColor Yellow
Write-Host "  A) rezwanulhaque (Site: https://rezwanulhaque.github.io)" -ForegroundColor White
Write-Host "  B) Rizu-17 (Site: https://Rizu-17.github.io/rezwanulhaque.github.io)" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Enter your choice (A or B)"

if ($choice -eq "A" -or $choice -eq "a") {
    Write-Host ""
    Write-Host "Configuring for username: rezwanulhaque..." -ForegroundColor Green
    git remote set-url origin https://github.com/rezwanulhaque/rezwanulhaque.github.io.git
    
    Write-Host "Repository URL set to: https://github.com/rezwanulhaque/rezwanulhaque.github.io.git" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "IMPORTANT NEXT STEPS:" -ForegroundColor Yellow
    Write-Host "1. Make sure the repository 'rezwanulhaque/rezwanulhaque.github.io' exists on GitHub" -ForegroundColor White
    Write-Host "2. If not, create it at: https://github.com/new" -ForegroundColor White
    Write-Host "   - Name: rezwanulhaque.github.io" -ForegroundColor White
    Write-Host "   - Public repository" -ForegroundColor White
    Write-Host "   - DO NOT initialize with any files" -ForegroundColor White
    Write-Host ""
    
    $proceed = Read-Host "Have you created the repository? (Y/N)"
    if ($proceed -ne "Y" -and $proceed -ne "y") {
        Write-Host "Please create the repository first, then run this script again." -ForegroundColor Yellow
        exit 0
    }
    
} elseif ($choice -eq "B" -or $choice -eq "b") {
    Write-Host ""
    Write-Host "Configuring for username: Rizu-17..." -ForegroundColor Green
    
    # Update _config.yml
    Write-Host "Updating _config.yml..." -ForegroundColor Cyan
    
    $configContent = Get-Content "_config.yml" -Raw
    $configContent = $configContent -replace 'url\s*:\s*https://rezwanulhaque\.github\.io', 'url                      : https://Rizu-17.github.io'
    $configContent = $configContent -replace 'baseurl\s*:\s*""', 'baseurl                  : "/rezwanulhaque.github.io"'
    $configContent = $configContent -replace 'repository\s*:\s*"rezwanulhaque/rezwanulhaque\.github\.io"', 'repository               : "Rizu-17/rezwanulhaque.github.io"'
    Set-Content "_config.yml" -Value $configContent
    
    git add _config.yml
    git commit -m "Update config for Rizu-17 account"
    
    git remote set-url origin https://github.com/Rizu-17/rezwanulhaque.github.io.git
    
    Write-Host "Repository URL set to: https://github.com/Rizu-17/rezwanulhaque.github.io.git" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "IMPORTANT NEXT STEPS:" -ForegroundColor Yellow
    Write-Host "1. Make sure the repository 'Rizu-17/rezwanulhaque.github.io' exists on GitHub" -ForegroundColor White
    Write-Host "2. If not, create it at: https://github.com/new" -ForegroundColor White
    Write-Host ""
    
    $proceed = Read-Host "Have you verified the repository exists? (Y/N)"
    if ($proceed -ne "Y" -and $proceed -ne "y") {
        Write-Host "Please verify the repository first, then run this script again." -ForegroundColor Yellow
        exit 0
    }
    
} else {
    Write-Host "Invalid choice. Exiting." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Step 3: Pushing to GitHub..." -ForegroundColor Green
Write-Host "If prompted for credentials, enter your GitHub username and password (or personal access token)" -ForegroundColor Yellow
Write-Host ""

git push -u origin master

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Green
    Write-Host "✅ SUCCESS! Code pushed to GitHub" -ForegroundColor Green
    Write-Host "==================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "NEXT STEPS:" -ForegroundColor Cyan
    Write-Host "1. Go to your repository on GitHub" -ForegroundColor White
    Write-Host "2. Click 'Settings' → 'Pages'" -ForegroundColor White
    Write-Host "3. Under 'Source', select branch 'master' and folder '/ (root)'" -ForegroundColor White
    Write-Host "4. Click 'Save'" -ForegroundColor White
    Write-Host "5. Wait 2-5 minutes for deployment" -ForegroundColor White
    Write-Host ""
    
    if ($choice -eq "A" -or $choice -eq "a") {
        Write-Host "Your site will be live at: https://rezwanulhaque.github.io" -ForegroundColor Green
    } else {
        Write-Host "Your site will be live at: https://Rizu-17.github.io/rezwanulhaque.github.io" -ForegroundColor Green
    }
    Write-Host ""
    
} else {
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Red
    Write-Host "❌ ERROR: Failed to push to GitHub" -ForegroundColor Red
    Write-Host "==================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common solutions:" -ForegroundColor Yellow
    Write-Host "1. Make sure the repository exists on GitHub" -ForegroundColor White
    Write-Host "2. Verify your GitHub credentials" -ForegroundColor White
    Write-Host "3. Check if you have write access to the repository" -ForegroundColor White
    Write-Host "4. Try generating a Personal Access Token:" -ForegroundColor White
    Write-Host "   https://github.com/settings/tokens" -ForegroundColor Cyan
    Write-Host ""
}

Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

