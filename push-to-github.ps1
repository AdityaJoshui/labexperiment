# PowerShell script to push to GitHub
# Run this in PowerShell: .\push-to-github.ps1

Write-Host "Pushing to GitHub repository: https://github.com/rock009-tech/aditya.git" -ForegroundColor Green
Write-Host ""

# Check if remote is set
$remote = git remote get-url origin
if ($remote -ne "https://github.com/rock009-tech/aditya.git") {
    Write-Host "Setting remote URL..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/rock009-tech/aditya.git
}

Write-Host "Attempting to push..." -ForegroundColor Yellow
Write-Host ""
Write-Host "If prompted for credentials:" -ForegroundColor Cyan
Write-Host "  Username: rock009-tech" -ForegroundColor Cyan
Write-Host "  Password: Your Personal Access Token (NOT your GitHub password)" -ForegroundColor Cyan
Write-Host ""
Write-Host "To create a Personal Access Token:" -ForegroundColor Cyan
Write-Host "  1. Go to: https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host "  2. Click 'Generate new token (classic)'" -ForegroundColor Cyan
Write-Host "  3. Select 'repo' scope" -ForegroundColor Cyan
Write-Host "  4. Generate and copy the token" -ForegroundColor Cyan
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "Success! Your code has been pushed to GitHub." -ForegroundColor Green
    Write-Host "Repository: https://github.com/rock009-tech/aditya" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "Push failed. Please check your credentials and try again." -ForegroundColor Red
}

