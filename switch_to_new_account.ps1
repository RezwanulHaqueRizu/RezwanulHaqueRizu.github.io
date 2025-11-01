# Script to Switch to New GitHub Account (rezwanulhaque)

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "Switch to rezwanulhaque Account" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "PREREQUISITES:" -ForegroundColor Yellow
Write-Host "1. You must have created a GitHub account with username: rezwanulhaque" -ForegroundColor White
Write-Host "2. You must have created a repository: rezwanulhaque.github.io" -ForegroundColor White
Write-Host "3. The repository must be Public" -ForegroundColor White
Write-Host ""

$confirm = Read-Host "Have you completed the above steps? (Y/N)"

if ($confirm -ne "Y" -and $confirm -ne "y") {
    Write-Host ""
    Write-Host "Please complete these steps first:" -ForegroundColor Yellow
    Write-Host "1. Go to: https://github.com/signup" -ForegroundColor Cyan
    Write-Host "2. Create account with username: rezwanulhaque" -ForegroundColor Cyan
    Write-Host "3. Go to: https://github.com/new" -ForegroundColor Cyan
    Write-Host "4. Create repository: rezwanulhaque.github.io (Public)" -ForegroundColor Cyan
    Write-Host ""
    exit 0
}

Write-Host ""
Write-Host "Step 1: Updating remote URL..." -ForegroundColor Green
git remote set-url origin https://github.com/rezwanulhaque/rezwanulhaque.github.io.git

Write-Host "Step 2: Committing configuration changes..." -ForegroundColor Green
git add _config.yml
git commit -m "Update configuration for rezwanulhaque account"

Write-Host ""
Write-Host "Step 3: Pushing to new repository..." -ForegroundColor Green
Write-Host "You will need to authenticate with your NEW GitHub account (rezwanulhaque)" -ForegroundColor Yellow
Write-Host ""

git push -u origin master

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Green
    Write-Host "✅ SUCCESS!" -ForegroundColor Green
    Write-Host "==================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "FINAL STEPS:" -ForegroundColor Cyan
    Write-Host "1. Go to: https://github.com/rezwanulhaque/rezwanulhaque.github.io/settings/pages" -ForegroundColor White
    Write-Host "2. Under 'Source', select:" -ForegroundColor White
    Write-Host "   - Branch: master" -ForegroundColor White
    Write-Host "   - Folder: / (root)" -ForegroundColor White
    Write-Host "3. Click 'Save'" -ForegroundColor White
    Write-Host "4. Wait 2-5 minutes" -ForegroundColor White
    Write-Host ""
    Write-Host "Your new site URL will be: https://rezwanulhaque.github.io" -ForegroundColor Green -BackgroundColor Black
    Write-Host ""
    Write-Host "Note: Your old URL (https://Rizu-17.github.io/rezwanulhaque.github.io) will still work" -ForegroundColor Yellow
    Write-Host "You can delete the old repository from Rizu-17 account if you want." -ForegroundColor Yellow
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Red
    Write-Host "❌ ERROR" -ForegroundColor Red
    Write-Host "==================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "1. Repository doesn't exist - create it at https://github.com/new" -ForegroundColor White
    Write-Host "2. Wrong credentials - make sure you're using rezwanulhaque account" -ForegroundColor White
    Write-Host "3. Use Personal Access Token instead of password:" -ForegroundColor White
    Write-Host "   https://github.com/settings/tokens" -ForegroundColor Cyan
    Write-Host ""
}

Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

