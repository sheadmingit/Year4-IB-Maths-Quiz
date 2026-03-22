#!/bin/bash

# Year 4 IB Maths Quiz — GitHub Deployment Script
# This script pushes your quiz to GitHub after OAuth authentication

set -e

echo "🚀 Year 4 IB Maths Quiz — GitHub Deployment"
echo "==========================================="
echo ""

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed!"
    echo ""
    echo "Please install it first:"
    echo "  macOS: brew install gh"
    echo "  Windows: choco install gh"
    echo "  Linux: curl -fsSL https://cli.github.com/install.sh | bash"
    echo ""
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ You're not authenticated with GitHub!"
    echo ""
    echo "Please run: gh auth login"
    echo ""
    echo "Then come back and run this script again."
    exit 1
fi

echo "✅ GitHub CLI authenticated!"
echo ""

# Get GitHub username
GITHUB_USER=$(gh api user -q .login)
echo "📝 GitHub User: $GITHUB_USER"
echo ""

# Repository details
REPO_NAME="Year4-IB-Maths-Quiz"
REPO_DESCRIPTION="Interactive two-stage math revision quiz with BLACKPINK design and K-pop vibes! 🎵✨"

echo "📦 Creating repository: $REPO_NAME"
echo ""

# Check if repo already exists
if gh repo view "$GITHUB_USER/$REPO_NAME" &> /dev/null; then
    echo "⚠️  Repository already exists!"
    echo "   Pushing updates to: https://github.com/$GITHUB_USER/$REPO_NAME"
    echo ""
else
    echo "🆕 Creating new public repository..."
    gh repo create "$REPO_NAME" \
        --public \
        --description "$REPO_DESCRIPTION" \
        --source=. \
        --remote=origin \
        --push
    echo "✅ Repository created!"
    echo ""
fi

# Get current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin "$CURRENT_BRANCH"

echo ""
echo "✅ Successfully deployed!"
echo ""
echo "🌐 Your repository is live at:"
echo "   https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "📚 Enable GitHub Pages (optional):"
echo "   1. Visit: https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "   2. Select branch: $CURRENT_BRANCH"
echo "   3. Your site will be at: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "🎉 Done! Share the GitHub link with students."
echo ""
