# 🔐 OAuth GitHub Deployment — Step by Step

Complete the following steps to securely push your Year 4 IB Maths Quiz to GitHub!

---

## ✨ The Process (5 Minutes)

### Step 1️⃣: Install GitHub CLI
**On your computer**, install GitHub CLI for your OS:

**macOS:**
```bash
brew install gh
```

**Windows (Chocolatey):**
```bash
choco install gh
```

**Windows (Winget):**
```bash
winget install GitHub.cli
```

**Linux (Ubuntu/Debian):**
```bash
curl -fsSL https://cli.github.com/install.sh | bash
```

**Verify it worked:**
```bash
gh --version
```

---

### Step 2️⃣: Authenticate with GitHub
**On your computer**, run:
```bash
gh auth login
```

**Follow the prompts:**
1. **Protocol?** → Press `Enter` for HTTPS
2. **Authenticate?** → Type `Y` and press Enter
3. **How to authenticate?** → Choose `Login with a web browser`
4. **GitHub opens in your browser** → Click "Authorize github CLI"
5. **Terminal shows success** ✅

**Result:** You're authenticated! 🎉

---

### Step 3️⃣: Navigate to Your Project
**On your computer**, open Terminal/PowerShell:

```bash
# Navigate to the quiz folder
cd "/path/to/Alexis Math"

# Or if unsure of path, do this:
# Go to File Explorer → Right-click folder → "Open in Terminal" or "Open in PowerShell"
```

---

### Step 4️⃣: Deploy to GitHub
**Run this command:**
```bash
bash deploy-to-github.sh
```

**What it does:**
- ✅ Creates repository on GitHub
- ✅ Pushes all quiz files
- ✅ Sets up git remote
- ✅ Prints your GitHub URL

**Result:** Your repo is live! 🚀

---

### Step 5️⃣: Enable GitHub Pages (Optional)
**To make quiz available at a live URL:**

1. Go to your repo on GitHub
2. Click **Settings** (top right)
3. Scroll to **Pages** (left sidebar)
4. Under "Build and deployment":
   - **Source:** Select "Deploy from a branch"
   - **Branch:** Select your branch (main/master)
   - Click **Save**
5. Wait 30 seconds, refresh page
6. You'll see: ✅ "Your site is published at: https://YOUR-USERNAME.github.io/Year4-IB-Maths-Quiz/"

---

## 🎯 After Deployment

### Your Repository is Ready!

Share these links with students:

**GitHub Repository:**
```
https://github.com/YOUR_USERNAME/Year4-IB-Maths-Quiz
```

**Live Demo (if GitHub Pages enabled):**
```
https://YOUR_USERNAME.github.io/Year4-IB-Maths-Quiz/
```

**Direct Quiz Links:**
- Stage 1: `https://YOUR_USERNAME.github.io/Year4-IB-Maths-Quiz/Year4_IB_Maths_Revision.html`
- Stage 2: `https://YOUR_USERNAME.github.io/Year4-IB-Maths-Quiz/Year4_IB_Maths_Stage2.html`

---

## 🔧 Making Changes Later

After deployment, if you want to make changes:

```bash
# Make edits to .html files
# ...

# Commit changes
git add .
git commit -m "Update: description of changes"

# Push to GitHub
git push
```

---

## ❓ Troubleshooting

### "gh: command not found"
- GitHub CLI didn't install properly
- Try installing again for your OS (see Step 1)

### "Not authenticated"
- Run `gh auth login` again
- Make sure to authorize in the browser window that opens

### "Repository already exists"
- That's fine! The script will push to it anyway

### "Permission denied"
- Check your GitHub account has push permissions
- Try: `gh auth logout` then `gh auth login` again

### "404 Not Found"
- Repository wasn't created
- Check you have permission to create repos
- Try creating one manually at https://github.com/new first

---

## 🚀 What You're Deploying

Your repository includes:

```
Year4-IB-Maths-Quiz/
├── Year4_IB_Maths_Revision.html    ← Stage 1 (40 questions)
├── Year4_IB_Maths_Stage2.html      ← Stage 2 (40 harder questions)
├── README.md                        ← Documentation
├── PROJECT_SUMMARY.md               ← Project details
├── GITHUB_SETUP.md                  ← GitHub guide
├── OAUTH_AUTH_GUIDE.md              ← Authentication guide
├── OAUTH_DEPLOYMENT_STEPS.md        ← This file!
├── deploy-to-github.sh              ← Deployment script
└── push-to-github.sh                ← Alternative push script
```

---

## ✅ Success Checklist

After completing all steps:

- [ ] GitHub CLI installed
- [ ] Authenticated with `gh auth login`
- [ ] Ran `bash deploy-to-github.sh`
- [ ] Script completed successfully
- [ ] Visited https://github.com/YOUR_USERNAME/Year4-IB-Maths-Quiz
- [ ] Repository shows all files
- [ ] (Optional) Enabled GitHub Pages
- [ ] (Optional) Tested live links

---

## 🎉 You're Done!

Your Year 4 IB Maths Quiz is now:
- ✅ On GitHub
- ✅ Version controlled
- ✅ Publicly available
- ✅ Ready to share with students
- ✅ Easy to update anytime

---

## 📞 Need Help?

1. Check the **Troubleshooting** section above
2. Read **GITHUB_SETUP.md** for more details
3. Visit [GitHub CLI docs](https://cli.github.com/manual)
4. Visit [GitHub Pages docs](https://pages.github.com/)

---

**Happy deploying! 🚀✨**

*Made with ❤️ for Year 4 IB Maths students*
