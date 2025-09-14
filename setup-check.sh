#!/bin/bash

# Git & GitHub Workshop Setup Script
# This script helps verify that students have the necessary tools installed

echo "🚀 Git & GitHub Workshop Setup Verification"
echo "============================================"
echo

# Check if Git is installed
echo "Checking Git installation..."
if command -v git &> /dev/null; then
    git_version=$(git --version)
    echo "✅ Git is installed: $git_version"
else
    echo "❌ Git is not installed. Please install Git from https://git-scm.com/downloads"
    exit 1
fi

echo

# Check Git configuration
echo "Checking Git configuration..."
git_name=$(git config --global user.name 2>/dev/null)
git_email=$(git config --global user.email 2>/dev/null)

if [ -n "$git_name" ] && [ -n "$git_email" ]; then
    echo "✅ Git is configured:"
    echo "   Name: $git_name"
    echo "   Email: $git_email"
else
    echo "⚠️  Git is not fully configured. Please run:"
    echo "   git config --global user.name \"Your Name\""
    echo "   git config --global user.email \"your.email@example.com\""
fi

echo

# Check if we can create a test repository
echo "Testing Git functionality..."
test_dir="/tmp/git-workshop-test-$$"
mkdir -p "$test_dir"
cd "$test_dir"

if git init > /dev/null 2>&1; then
    echo "✅ Git repository creation works"
    
    # Test basic Git operations
    echo "Test file" > test.txt
    if git add test.txt > /dev/null 2>&1 && git commit -m "Test commit" > /dev/null 2>&1; then
        echo "✅ Basic Git operations work"
    else
        echo "❌ Basic Git operations failed"
    fi
else
    echo "❌ Git repository creation failed"
fi

# Cleanup
cd /
rm -rf "$test_dir"

echo

# Check for a text editor
echo "Checking for text editors..."
editors=("code" "subl" "atom" "nano" "vim" "emacs")
editor_found=false

for editor in "${editors[@]}"; do
    if command -v "$editor" &> /dev/null; then
        echo "✅ Found editor: $editor"
        editor_found=true
        break
    fi
done

if [ "$editor_found" = false ]; then
    echo "⚠️  No common text editor found. Consider installing VS Code, Sublime Text, or another editor"
fi

echo

# Check internet connectivity for GitHub
echo "Checking GitHub connectivity..."
if curl -s --head https://github.com > /dev/null; then
    echo "✅ GitHub is accessible"
else
    echo "❌ Cannot reach GitHub. Check your internet connection"
fi

echo

# Final summary
echo "🎯 Setup Summary"
echo "==============="
echo "If you see mostly ✅ marks above, you're ready for the workshop!"
echo "If you see ❌ marks, please address those issues before the workshop."
echo "If you see ⚠️ marks, those are recommendations but not critical."

echo
echo "📚 Next Steps:"
echo "1. Fork this repository on GitHub"
echo "2. Clone your fork to your local machine"
echo "3. Open the repository in your text editor"
echo "4. You're ready to start the workshop!"

echo
echo "Need help? Contact your instructor or check the documentation."