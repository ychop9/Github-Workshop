# Instructor Guide for Git & GitHub Workshop

## Workshop Overview

This workshop is designed to teach students essential Git and GitHub skills through hands-on exercises. The workshop can be completed in 2-4 hours depending on the pace and depth of coverage.

## Prerequisites for Instructors

- Solid understanding of Git and GitHub
- Experience with command line/terminal
- Familiarity with basic programming concepts
- Access to a computer with Git installed
- GitHub account with instructor privileges

## Workshop Structure

### Duration: 3-4 hours
### Format: Hands-on workshop with guided exercises
### Class Size: 5-25 students (optimal: 8-15)

## Pre-Workshop Setup

### For Instructors:
1. **Test all exercises** on your own machine
2. **Prepare backup plans** for common issues
3. **Set up a demonstration repository** if needed
4. **Prepare troubleshooting resources**
5. **Create a shared communication channel** (Slack, Discord, etc.)

### For Students:
1. **Send setup instructions** 1 week before:
   - Install Git
   - Create GitHub account
   - Install a text editor
   - Test basic terminal/command prompt access

2. **Provide this repository link** for students to fork and clone

## Workshop Timeline

### Introduction (30 minutes)
- Welcome and introductions
- Overview of Git and GitHub
- Why version control matters
- Workshop objectives and structure

### Exercise 1: Basic Git Commands (30 minutes)
**Learning Objectives:**
- Understand Git repository structure
- Learn basic commands (status, add, commit, log)
- Practice making first commits

**Instructor Notes:**
- Walk through each command step-by-step
- Explain what each command does before running it
- Show the output and explain what it means
- Common issues: typos in commands, forgetting to save files

**Guided Demo:**
```bash
git status
echo "Name: John Doe" > student-info.txt
git status
git add student-info.txt
git status
git commit -m "Add my student information"
git log --oneline
```

### Exercise 2: Working with Branches (45 minutes)
**Learning Objectives:**
- Understand branching concepts
- Create and switch between branches
- Learn branch management commands

**Instructor Notes:**
- Explain why branches are useful before creating them
- Demonstrate the concept with diagrams if possible
- Show how files change when switching branches
- Common issues: forgetting which branch they're on

**Key Points to Emphasize:**
- Branches allow parallel development
- Each branch is independent
- Main/master branch should be stable

### Break (15 minutes)

### Exercise 3: File Operations (30 minutes)
**Learning Objectives:**
- Practice various file operations
- Understand staging area concept
- Learn to track changes

**Instructor Notes:**
- Show the three states: working directory, staging area, repository
- Demonstrate `git diff` and `git diff --staged`
- Explain why staging area exists

### Exercise 4: Merging Branches (45 minutes)
**Learning Objectives:**
- Understand merging concepts
- Practice fast-forward and three-way merges
- Learn merge strategies

**Instructor Notes:**
- Start with simple merges (fast-forward)
- Explain when merges are necessary
- Show git log with graph visualization
- Prepare for potential conflicts in next exercise

### Exercise 5: Remote Repositories (30 minutes)
**Learning Objectives:**
- Understand local vs remote repositories
- Learn push/pull operations
- Practice with GitHub integration

**Instructor Notes:**
- Explain the difference between local and remote
- Show how to verify pushes on GitHub
- Discuss authentication methods (SSH vs HTTPS)

### Break (15 minutes)

### Exercise 6: Merge Conflicts (45 minutes)
**Learning Objectives:**
- Understand what causes conflicts
- Learn to resolve conflicts manually
- Practice conflict resolution workflow

**Instructor Notes:**
- **Most challenging exercise** - provide extra support
- Walk through conflict markers explanation
- Show how to use merge tools if available
- Emphasize testing after resolution

**Common Student Mistakes:**
- Forgetting to remove conflict markers
- Not testing the merged code
- Committing without adding resolved files

### Wrap-up and Next Steps (15 minutes)
- Review what was learned
- Discuss additional resources
- Q&A session
- Optional: Advanced topics preview

## Common Student Issues and Solutions

### Technical Issues:
1. **Git not installed**
   - Have backup installer files
   - Pair students with working setups

2. **Authentication problems**
   - Help with SSH keys or personal access tokens
   - Have GitHub documentation ready

3. **Terminal/Command line unfamiliarity**
   - Provide basic command cheat sheet
   - Pair with experienced students

### Conceptual Issues:
1. **Confusion about staging area**
   - Use diagrams and analogies
   - Repeat demonstrations

2. **Branch switching confusion**
   - Emphasize checking `git status` and `git branch`
   - Show file differences when switching

3. **Merge conflict panic**
   - Stay calm and methodical
   - Walk through step-by-step
   - Show it's not "broken"

## Teaching Tips

### Do:
- **Walk around** and check on students individually
- **Encourage questions** at any time
- **Use analogies** to explain concepts (branches like parallel universes, commits like save points)
- **Show mistakes** and how to fix them
- **Pair stronger students** with those struggling
- **Take breaks** when needed

### Don't:
- Rush through exercises
- Skip error explanations
- Assume everyone is following
- Leave struggling students behind
- Forget to save/commit demonstration work

## Assessment and Follow-up

### Completion Criteria:
Students should be able to:
- [ ] Create commits with meaningful messages
- [ ] Create and switch between branches
- [ ] Merge branches successfully
- [ ] Resolve basic merge conflicts
- [ ] Push changes to GitHub
- [ ] Understand when to use different Git commands

### Follow-up Activities:
1. **Homework assignment:** Complete a small project using Git
2. **Code review practice:** Review each other's work
3. **Advanced workshop:** Cover rebasing, cherry-picking, etc.
4. **Open source contribution:** Find beginner-friendly projects

## Resources for Students

### Essential:
- This workshop repository
- [Git Official Documentation](https://git-scm.com/doc)
- [GitHub Learning Lab](https://lab.github.com/)

### Additional:
- [Interactive Git Tutorial](https://learngitbranching.js.org/)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)
- [Pro Git Book](https://git-scm.com/book) (free online)

## Customization Notes

This workshop can be adapted for:
- **Different skill levels:** Add/remove exercises
- **Different time constraints:** Focus on core exercises
- **Different programming languages:** Modify sample projects
- **Online delivery:** Use screen sharing and breakout rooms

## Feedback Collection

After the workshop, collect feedback on:
- Pace of instruction
- Clarity of explanations
- Exercise difficulty
- Technical setup issues
- Suggestions for improvement

---

**Remember:** The goal is to make students comfortable with Git fundamentals, not to cover every advanced feature. Focus on building confidence with core concepts!