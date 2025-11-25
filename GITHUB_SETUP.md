# GitHub Setup Instructions

## Pushing to GitHub

Follow these steps to push your event management website to GitHub:

### Step 1: Create a GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Name it (e.g., `event-management-website`)
5. Choose Public or Private
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

### Step 2: Add Remote and Push

Run these commands in your project directory:

```bash
# Add the remote repository (replace YOUR_USERNAME and REPO_NAME with your actual values)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

### Alternative: Using SSH

If you prefer SSH:

```bash
git remote add origin git@github.com:YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

### Step 3: Verify

Check your GitHub repository to confirm all files have been pushed successfully.

## Repository Contents

Your repository includes:
- ✅ Maven project structure (`pom.xml`)
- ✅ JSP pages (`index.jsp`, `events.jsp`)
- ✅ CSS styling (`css/style.css`)
- ✅ Web configuration (`WEB-INF/web.xml`)
- ✅ README.md with project documentation
- ✅ .gitignore for Maven projects

## Note

The `target/` directory (containing the built WAR file) is excluded from Git via `.gitignore` as it's a build artifact. Users can generate it locally using `mvn clean package`.

