#!/bin/bash

# Year 4 IB Maths Quiz — GitHub Push Script
# This script helps you push the repository to GitHub

echo "🚀 Year 4 IB Maths Quiz - GitHub Setup"
echo "========================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Error: Not a git repository!"
    exit 1
fi

# Ask for GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# Ask for repository name (with default)
read -p "Enter repository name (default: Year4-IB-Maths-Quiz): " REPO_NAME
REPO_NAME=${REPO_NAME:-Year4-IB-Maths-Quiz}

# Ask to rename branch to main
read -p "Rename 'master' to 'main'? (y/n, default: y): " RENAME_BRANCH
RENAME_BRANCH=${RENAME_BRANCH:-y}

if [[ $RENAME_BRANCH == "y" || $RENAME_BRANCH == "Y" ]]; then
    echo "📝 Renaming branch to main..."
    git branch -m master main
    echo "✅ Branch renamed to main"
fi

# Construct the remote URL
REMOTE_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo "📋 Configuration:"
echo "   GitHub User: $GITHUB_USERNAME"
echo "   Repository: $REPO_NAME"
echo "   Remote URL: $REMOTE_URL"
echo ""

# Ask for confirmation
read -p "Proceed with these settings? (y/n): " CONFIRM
if [[ $CONFIRM != "y" && $CONFIRM != "Y" ]]; then
    echo "Cancelled."
    exit 0
fi

# Add remote
echo ""
echo "🔗 Adding remote..."
git remote add origin $REMOTE_URL

# Get current branch name
BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin $BRANCH

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "🎉 Your repository is now live at:"
    echo "   https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
    echo ""
    echo "📚 To enable GitHub Pages (live demo):"
    echo "   1. Go to Settings > Pages"
    echo "   2. Select '$BRANCH' branch as source"
    echo "   3. Site will be live at: https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
    echo ""
else
    echo "❌ Push failed. Make sure:"
    echo "   • You're authenticated with GitHub"
    echo "   • The repository exists on GitHub"
    echo "   • You have push permissions"
fi
