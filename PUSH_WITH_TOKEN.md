# Push to GitHub Using Personal Access Token

Since we're in a non-interactive environment, you need to authenticate manually. Here's the easiest way:

## Method 1: Use Token in Remote URL (Temporary)

1. **Get your Personal Access Token:**
   - Go to: https://github.com/settings/tokens
   - Click "Generate new token (classic)"
   - Name: "Event Management"
   - Select scope: `repo`
   - Generate and copy the token

2. **Update remote URL with token:**
   ```bash
   git remote set-url origin https://YOUR_TOKEN@github.com/rock009-tech/aditya.git
   git push -u origin main
   ```

   Replace `YOUR_TOKEN` with your actual token.

3. **After pushing, remove token from URL (for security):**
   ```bash
   git remote set-url origin https://github.com/rock009-tech/aditya.git
   ```

## Method 2: Use Git Credential Manager (Interactive)

Open a new terminal/PowerShell window and run:
```bash
cd C:\Users\Student\Desktop\2203120
git push -u origin main
```

When prompted:
- Username: `rock009-tech`
- Password: Your Personal Access Token (not your GitHub password)

## Method 3: Use GitHub CLI

If you have `gh` installed:
```bash
gh auth login
git push -u origin main
```

## Quick Command to Try

Once you have your token, run this in a new terminal:
```bash
cd C:\Users\Student\Desktop\2203120
git remote set-url origin https://YOUR_TOKEN@github.com/rock009-tech/aditya.git
git push -u origin main
git remote set-url origin https://github.com/rock009-tech/aditya.git
```

Replace `YOUR_TOKEN` with your actual personal access token.

