# Script to setup git repository
$ErrorActionPreference = "Stop"

# Get the script directory (project root)
$projectPath = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Initializing git repository in: $projectPath"

# Remove existing .git if it exists
if (Test-Path "$projectPath\.git") {
    Remove-Item "$projectPath\.git" -Recurse -Force
    Write-Host "Removed existing .git directory"
}

# Initialize git
Set-Location $projectPath
git init

# Add files
git add index.html README.md .gitignore

# Check status
Write-Host "`nGit status:"
git status

Write-Host "`n✅ Git repository initialized successfully!"
Write-Host "Next steps:"
Write-Host "1. Create a new repository on GitHub"
Write-Host "2. Run: git commit -m 'Initial commit'"
Write-Host "3. Run: git remote add origin <your-github-repo-url>"
Write-Host "4. Run: git push -u origin main (or master)"

