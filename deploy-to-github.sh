#!/bin/bash

echo "🚀 USOTG GitHub Deployment Script"
echo "=================================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git not initialized. Run this from the USOTG directory."
    exit 1
fi

echo ""
echo "📝 Before running this script:"
echo "1. Create a new repository on GitHub.com"
echo "2. Copy the repository URL (https://github.com/YOUR-USERNAME/REPO-NAME.git)"
echo ""

read -p "Enter your GitHub repository URL: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ Repository URL is required"
    exit 1
fi

echo ""
echo "🔗 Adding remote repository..."
git remote add origin "$REPO_URL"

echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Successfully deployed to GitHub!"
echo ""
echo "🌐 Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Click Settings → Pages"
echo "3. Enable GitHub Pages (Deploy from branch: main)"
echo "4. Your site will be live at: https://YOUR-USERNAME.github.io/REPO-NAME"
echo ""
echo "📧 Share this link with your business partners!"
