# Quick Push Instructions

## Option 1: Run the PowerShell Script (Easiest)

1. Open PowerShell in the project directory
2. Run:
   ```powershell
   .\push-to-github.ps1
   ```
3. When prompted:
   - **Username**: `rock009-tech`
   - **Password**: Your Personal Access Token (create one at https://github.com/settings/tokens)

## Option 2: Manual Push with Token

1. **Create Personal Access Token:**
   - Visit: https://github.com/settings/tokens
   - Click "Generate new token (classic)"
   - Name: "Event Management"
   - Select scope: `repo` (check the box)
   - Click "Generate token"
   - **Copy the token immediately**

2. **Push using token:**
   ```bash
   git push -u origin main
   ```
   - Username: `rock009-tech`
   - Password: Paste your token (not your GitHub password)

## Option 3: Use Token in URL (One-time)

```bash
# Replace YOUR_TOKEN with your actual token
git remote set-url origin https://YOUR_TOKEN@github.com/rock009-tech/aditya.git
git push -u origin main

# After successful push, remove token from URL for security
git remote set-url origin https://github.com/rock009-tech/aditya.git
```

## Verify Push

After successful push, check:
https://github.com/rock009-tech/aditya

You should see all your project files there!

## Current Status

✅ All files committed  
✅ Remote configured: `https://github.com/rock009-tech/aditya.git`  
✅ Branch: `main`  
⏳ Waiting for authentication to push

