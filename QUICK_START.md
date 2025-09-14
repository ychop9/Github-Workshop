# Quick Start Guide for Instructors

## Before the Workshop (1 week prior)

### Send to Students:
1. **Pre-workshop email** with setup instructions:
   ```
   Subject: Git & GitHub Workshop - Setup Required
   
   Hi everyone!
   
   Please complete these setup steps before our workshop:
   
   1. Install Git: https://git-scm.com/downloads
   2. Create GitHub account: https://github.com/join
   3. Install a text editor (VS Code recommended): https://code.visualstudio.com/
   4. Test your setup with our verification script:
      - Download: [repository URL]/setup-check.sh
      - Run: bash setup-check.sh
   
   If you have any issues, please reach out!
   ```

2. **Repository link** for students to fork
3. **Workshop agenda** and materials list

### Instructor Preparation:
- [ ] Review INSTRUCTOR_GUIDE.md thoroughly
- [ ] Test all exercises on your machine
- [ ] Prepare troubleshooting resources
- [ ] Set up screen sharing/demo environment
- [ ] Create communication channel (Slack/Discord)

## Day of Workshop

### Setup (15 minutes before start)
1. **Test your demo environment**
2. **Prepare backup solutions** for common issues
3. **Have GitHub documentation** ready
4. **Set up screen sharing**

### Quick Workshop Flow

#### 1. Introduction (30 min)
- Welcome and introductions
- Git/GitHub overview
- Workshop objectives

#### 2. Exercise 1: Basic Commands (30 min)
```bash
# Demo these commands step by step:
git status
echo "Name: Student Name" > student-info.txt
git add student-info.txt
git commit -m "Add student information"
git log --oneline
```

#### 3. Exercise 2: Branches (45 min)
```bash
# Key commands to demonstrate:
git checkout -b feature/my-project
mkdir my-project
echo "# My Project" > my-project/README.md
git add my-project/
git commit -m "Add my first project"
git checkout main
git branch -a
```

#### 4. Break (15 min)

#### 5. Exercise 3: File Operations (30 min)
```bash
# Focus on staging area concept:
git add .
git diff
git diff --staged
```

#### 6. Exercise 4: Merging (45 min)
```bash
# Start simple, then show conflicts:
git merge feature/my-project
git log --oneline --graph
```

#### 7. Exercise 5: Remote Operations (30 min)
```bash
# GitHub integration:
git push origin main
git push origin feature/collaboration
```

#### 8. Break (15 min)

#### 9. Exercise 6: Conflicts (45 min)
**Most important:** Stay calm, walk through slowly

#### 10. Wrap-up (15 min)

## Troubleshooting Quick Reference

### Common Issues:
| Problem | Solution |
|---------|----------|
| Git not installed | Use setup-check.sh, pair students |
| Authentication failed | Help with SSH/tokens |
| Can't find terminal | Show how to open |
| Merge conflict panic | Stay calm, demonstrate step-by-step |
| Lost/confused | Use `git status` to orient |

### Emergency Commands:
```bash
git status              # Show current state
git log --oneline       # Show recent commits
git branch             # Show current branch
git checkout main      # Go back to main branch
git reset --hard HEAD  # Nuclear option - discard all changes
```

## Communication Tips

### Do Say:
- "Let's check our status with `git status`"
- "This is normal - let me show you how to fix it"
- "Great question! This comes up often..."
- "Let's try that again step by step"

### Don't Say:
- "This is easy" (it's not for beginners)
- "Just do this quickly..." (go slow)
- "Everyone got that?" (check individually)
- "This never works" (stay positive)

## Post-Workshop

### Immediate:
- [ ] Collect feedback
- [ ] Share additional resources
- [ ] Provide contact info for follow-up questions

### Follow-up (within 1 week):
- [ ] Send summary email with resources
- [ ] Share recording if available
- [ ] Suggest next steps for continued learning

## Resources to Have Ready

### Links:
- [Git Documentation](https://git-scm.com/doc)
- [GitHub Learning Lab](https://lab.github.com/)
- [Interactive Git Tutorial](https://learngitbranching.js.org/)

### Files:
- This repository
- Git cheat sheet (in templates/)
- Setup verification script

---

**Remember:** Go slow, check frequently, and emphasize that making mistakes is part of learning Git!