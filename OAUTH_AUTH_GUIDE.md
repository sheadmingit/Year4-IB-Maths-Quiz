# GitHub OAuth Authentication Guide

## 🔐 Secure OAuth Setup

This guide will help you authenticate securely with GitHub using OAuth, so the repository can be pushed automatically.

---

## Step 1: Install GitHub CLI

Choose your operating system:

### macOS
```bash
brew install gh
```

### Windows
```bash
# Using Chocolatey
choco install gh

# OR using Winget
winget install GitHub.cli
```

### Linux (Ubuntu/Debian)
```bash
curl -fsSL https://cli.github.com/install.sh | bash
```

### Linux (Fedora/RHEL)
```bash
sudo dnf install gh
```

### Linux (Arch)
```bash
pacman -S github-cli
```

Verify installation:
```bash
gh --version
```

---

## Step 2: Authenticate with GitHub

Run the authentication command:
```bash
gh auth login
```

### Follow the prompts:

**1. What is your preferred protocol for Git operations?**
   → Choose: `HTTPS`

**2. Authenticate with your GitHub credentials?**
   → Choose: `Y` (Yes)

**3. How would you like to authenticate?**
   → Choose: `Login with a web browser`

**4. Your one-time code is: [CODE]**
   → GitHub will open in your browser
   → The code is already filled in
   → Click "Authorize github CLI"

**5. Success!**
   → Terminal will confirm authentication ✅

---

## Step 3: Tell Me You're Authenticated

Once you see ✅ in your terminal, come back here and tell me:
> "I've authenticated with GitHub CLI ✅"

Then I'll automatically:
1. ✅ Create your repository on GitHub
2. ✅ Push all quiz files
3. ✅ Set up GitHub Pages
4. ✅ Give you the live demo URL

---

## What Happens Next (Automated by Claude)

Once you're authenticated, I'll run:

```bash
cd "/sessions/elegant-kind-thompson/mnt/Alexis Math"

# Create repository on GitHub
gh repo create Year4-IB-Maths-Quiz \
  --public \
  --source=. \
  --remote=origin \
  --push

# Output the repo URL
echo "Repository created at: $(gh repo view --json nameWithOwner -q)"
```

---

## 🔒 Security Notes

- ✅ Your authentication is **local only** - stored in `~/.config/gh/hosts.yml`
- ✅ No passwords or tokens shared in chat
- ✅ OAuth flow happens **in your browser**
- ✅ You remain in control the entire time
- ✅ Can revoke access anytime from GitHub Settings

---

## Troubleshooting

### "gh: command not found"
→ Make sure installation completed: `gh --version`

### "Failed to authenticate"
→ Try again: `gh auth logout` then `gh auth login`

### "Permission denied"
→ Check your GitHub account has push permissions

### "Repository already exists"
→ That's fine! I'll push to the existing repo

---

## Next Steps

1. **Install gh CLI** (if not already done)
2. **Run `gh auth login`** and follow prompts
3. **Come back here and tell me** you're authenticated
4. **I'll push everything automatically** 🚀

---

**Ready?** Let's make this happen! 🎉
