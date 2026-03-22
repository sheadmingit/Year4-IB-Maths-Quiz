# GitHub Repository Setup Instructions

Your git repository is ready! Follow these steps to push it to GitHub:

## Step 1: Create Repository on GitHub

1. Go to [github.com/new](https://github.com/new)
2. Enter repository name: **Year4-IB-Maths-Quiz**
3. Description: *Interactive two-stage math revision quiz with BLACKPINK design and K-pop vibes*
4. Choose **Public** (to share with students)
5. Click **Create repository**

## Step 2: Add Remote and Push

Copy and run these commands in your terminal:

```bash
cd "/path/to/Alexis Math"

# Add the remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/Year4-IB-Maths-Quiz.git

# Rename branch to main (recommended)
git branch -m master main

# Push to GitHub
git push -u origin main
```

## Step 3: Verify

Visit `https://github.com/YOUR_USERNAME/Year4-IB-Maths-Quiz` to see your repo!

---

## Alternative: Using GitHub Desktop

If you prefer a GUI:

1. Open GitHub Desktop
2. Go to **File > Add Local Repository**
3. Select the `/sessions/elegant-kind-thompson/mnt/Alexis Math` folder
4. Publish repository to GitHub (button in top right)
5. Enter repository name and description
6. Click **Publish Repository**

---

## What's in Your Repository

```
Year4-IB-Maths-Quiz/
├── README.md                          # Project documentation
├── .gitignore                         # Files to ignore
├── Year4_IB_Maths_Revision.html      # Stage 1 (40 foundation questions)
└── Year4_IB_Maths_Stage2.html        # Stage 2 (40 challenge questions)
```

## After Publishing

### Share Your Quiz
- **Live Demo Link**: You can host it on GitHub Pages!
  1. Go to Settings > Pages
  2. Select "main" branch as source
  3. Your site will be live at: `https://YOUR_USERNAME.github.io/Year4-IB-Maths-Quiz/`

### Update Your README
Add a live demo link to the README:

```markdown
## 🚀 Try It Now

- **Stage 1** (Foundation): [Play Quiz](https://your-username.github.io/Year4-IB-Maths-Quiz/Year4_IB_Maths_Revision.html)
- **Stage 2** (Challenge): [Take Challenge](https://your-username.github.io/Year4-IB-Maths-Quiz/Year4_IB_Maths_Stage2.html)
```

---

## Git Commands Reference

```bash
# Check status
git status

# View commits
git log --oneline

# Make changes and commit
git add .
git commit -m "Your message"
git push

# Create a new branch for features
git checkout -b feature/new-feature
git push -u origin feature/new-feature
```

---

**Questions?** Check [GitHub's Getting Started Guide](https://docs.github.com/en/get-started)
