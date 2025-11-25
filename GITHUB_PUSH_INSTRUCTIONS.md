# GitHub Push Instructions

## Current Issue
You're authenticated as `atharvp2722` but trying to push to `rock009-tech/aditya.git`. You need to authenticate with the correct account.

## Solution Options

### Option 1: Use Personal Access Token (Recommended)

1. **Create a Personal Access Token:**
   - Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Click "Generate new token (classic)"
   - Give it a name (e.g., "Event Management Project")
   - Select scopes: `repo` (full control of private repositories)
   - Click "Generate token"
   - **Copy the token immediately** (you won't see it again!)

2. **Push using the token:**
   ```bash
   git push -u origin main
   ```
   - When prompted for username: Enter `rock009-tech`
   - When prompted for password: **Paste your personal access token** (not your password)

### Option 2: Update Git Credentials

1. **Clear cached credentials:**
   ```bash
   git credential-manager-core erase
   ```
   Or on Windows:
   ```bash
   cmdkey /list
   cmdkey /delete:git:https://github.com
   ```

2. **Push again:**
   ```bash
   git push -u origin main
   ```
   - Enter username: `rock009-tech`
   - Enter password: Your personal access token

### Option 3: Use GitHub CLI (gh)

If you have GitHub CLI installed:
```bash
gh auth login
gh repo set-default rock009-tech/aditya
git push -u origin main
```

### Option 4: Configure Git Credential Helper

```bash
git config --global credential.helper manager-core
git push -u origin main
```

## Quick Push Command

After setting up authentication, run:
```bash
git push -u origin main
```

## Verify

After successful push, check your repository:
https://github.com/rock009-tech/aditya

## Note

The repository is currently empty and ready to receive your code. All files are committed and ready to push once authentication is resolved.

