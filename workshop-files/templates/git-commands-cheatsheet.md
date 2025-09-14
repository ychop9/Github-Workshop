# Git Commands Cheat Sheet 📋

## Basic Commands

### Repository Setup
```bash
git init                    # Initialize a new Git repository
git clone <url>            # Clone a remote repository
git config --global user.name "Name"      # Set your name
git config --global user.email "email"    # Set your email
```

### File Operations
```bash
git add <file>             # Stage a specific file
git add .                  # Stage all changes
git add -A                 # Stage all changes including deletions
git reset <file>           # Unstage a file
git checkout -- <file>     # Discard changes to a file
```

### Committing
```bash
git commit -m "message"    # Commit with a message
git commit -am "message"   # Stage and commit in one step
git commit --amend         # Modify the last commit
```

### Viewing Information
```bash
git status                 # Show working directory status
git log                    # Show commit history
git log --oneline          # Show compact commit history
git log --graph            # Show commit history with graph
git diff                   # Show unstaged changes
git diff --staged          # Show staged changes
git diff HEAD~1            # Show changes from last commit
```

## Branching and Merging

### Branch Operations
```bash
git branch                 # List local branches
git branch -a              # List all branches (local + remote)
git branch <name>          # Create a new branch
git checkout <branch>      # Switch to a branch
git checkout -b <branch>   # Create and switch to a new branch
git branch -d <branch>     # Delete a branch
git branch -D <branch>     # Force delete a branch
```

### Merging
```bash
git merge <branch>         # Merge a branch into current branch
git merge --no-ff <branch> # Merge with no fast-forward
git rebase <branch>        # Rebase current branch onto another
```

## Remote Repositories

### Remote Operations
```bash
git remote -v              # Show remote repositories
git remote add origin <url> # Add a remote repository
git push origin <branch>   # Push to remote branch
git pull origin <branch>   # Pull from remote branch
git fetch                  # Fetch changes without merging
```

### Tracking Branches
```bash
git push -u origin <branch>    # Push and set upstream
git branch --set-upstream-to=origin/<branch> # Set upstream
```

## Advanced Commands

### Stashing
```bash
git stash                  # Stash current changes
git stash pop              # Apply most recent stash
git stash list             # List all stashes
git stash drop             # Delete most recent stash
```

### Undoing Changes
```bash
git reset --soft HEAD~1    # Undo last commit, keep changes staged
git reset --mixed HEAD~1   # Undo last commit, unstage changes
git reset --hard HEAD~1    # Undo last commit, discard changes
git revert <commit>        # Create new commit that undoes changes
```

### Tagging
```bash
git tag                    # List tags
git tag v1.0               # Create a lightweight tag
git tag -a v1.0 -m "msg"   # Create an annotated tag
git push origin v1.0       # Push a specific tag
git push origin --tags     # Push all tags
```

## Useful Aliases

Add these to your Git config for shortcuts:

```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.lg "log --oneline --graph --all"
```

## Common Workflows

### Feature Branch Workflow
```bash
git checkout main          # Switch to main branch
git pull origin main       # Get latest changes
git checkout -b feature/new-feature  # Create feature branch
# ... make changes ...
git add .                  # Stage changes
git commit -m "Add new feature"      # Commit changes
git push origin feature/new-feature  # Push to remote
# ... create pull request on GitHub ...
git checkout main          # Switch back to main
git pull origin main       # Get latest changes (including your merge)
git branch -d feature/new-feature    # Delete local branch
```

### Hotfix Workflow
```bash
git checkout main          # Switch to main
git checkout -b hotfix/urgent-fix    # Create hotfix branch
# ... make urgent changes ...
git add .                  # Stage changes
git commit -m "Fix urgent bug"      # Commit fix
git push origin hotfix/urgent-fix   # Push to remote
# ... create and merge pull request ...
```

## Troubleshooting

### Common Issues and Solutions

**Merge Conflicts:**
```bash
# Edit conflicted files manually
git add <resolved-file>    # Stage resolved files
git commit                 # Complete the merge
```

**Accidentally committed to wrong branch:**
```bash
git reset --soft HEAD~1    # Undo commit, keep changes
git stash                  # Stash changes
git checkout correct-branch # Switch to correct branch
git stash pop              # Apply changes
git commit -m "message"    # Commit to correct branch
```

**Want to see what changed:**
```bash
git show <commit-hash>     # Show specific commit
git log -p                 # Show commits with diffs
git blame <file>           # See who changed each line
```

## Best Practices

1. **Commit Messages:**
   - Use present tense ("Add feature" not "Added feature")
   - Keep first line under 50 characters
   - Use body for detailed explanations

2. **Branching:**
   - Use descriptive branch names
   - Keep branches focused and short-lived
   - Delete merged branches

3. **General:**
   - Commit early and often
   - Test before committing
   - Use .gitignore for build artifacts
   - Review changes before pushing

---

*Print this cheat sheet or bookmark it for quick reference during the workshop!*