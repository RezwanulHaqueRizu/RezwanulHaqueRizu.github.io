# 🚀 Quick Start - Deploy Your Portfolio in 5 Minutes!

## ⚡ Super Fast Method

### **Option 1: Use the PowerShell Script (Easiest)**

1. **Open PowerShell** in your project directory
2. Run:
   ```powershell
   .\deploy.ps1
   ```
3. Follow the interactive prompts
4. Done! ✅

---

### **Option 2: Manual Commands**

#### If using username `rezwanulhaque`:

```powershell
cd "E:\Portfolio Website\rezwanulhaque.github.io"

# Make sure you've created the repository on GitHub first:
# https://github.com/new
# Repository name: rezwanulhaque.github.io (MUST match exactly)
# Make it Public, don't initialize with any files

# Push your code
git push -u origin master
```

**Your site will be at:** `https://rezwanulhaque.github.io`

---

#### If using username `Rizu-17`:

```powershell
cd "E:\Portfolio Website\rezwanulhaque.github.io"

# Update remote
git remote set-url origin https://github.com/Rizu-17/rezwanulhaque.github.io.git

# Update _config.yml lines 16-19:
# url: https://Rizu-17.github.io
# baseurl: "/rezwanulhaque.github.io"
# repository: "Rizu-17/rezwanulhaque.github.io"

# Commit and push
git add _config.yml
git commit -m "Update config for Rizu-17"
git push -u origin master
```

**Your site will be at:** `https://Rizu-17.github.io/rezwanulhaque.github.io`

---

## 🔧 Enable GitHub Pages (CRITICAL!)

After pushing your code:

1. Go to your repository on GitHub
2. **Settings** → **Pages** (left sidebar)
3. **Source:**
   - Branch: `master`
   - Folder: `/ (root)`
4. Click **Save**
5. Wait 2-5 minutes ⏱️
6. Your site is live! 🎉

---

## ✅ Verification Checklist

- [ ] Repository created on GitHub
- [ ] Code pushed successfully
- [ ] GitHub Pages enabled in Settings
- [ ] Green checkmark in Actions tab
- [ ] Site accessible at your URL
- [ ] Images loading correctly
- [ ] Navigation working
- [ ] Publications displaying

---

## 🆘 Quick Troubleshooting

| Problem | Solution |
|---------|----------|
| Can't push to GitHub | Create repository first at github.com/new |
| 404 Error | Enable GitHub Pages in Settings → Pages |
| CSS not loading | Check `baseurl` in `_config.yml` |
| Authentication failed | Use Personal Access Token instead of password |

---

## 📱 Test Your Site

After deployment, check these pages:
- ✅ Homepage: `/`
- ✅ About: `/about/`
- ✅ Publications: `/publications/`
- ✅ Projects: `/portfolio/`
- ✅ CV: `/cv/`

---

## 🔄 Making Updates Later

```powershell
# Make your changes to files
# Then:
git add -A
git commit -m "Your update message"
git push origin master

# Site will auto-update in 2-5 minutes
```

---

## 📚 Files You Created

- ✅ `DEPLOYMENT_GUIDE.md` - Complete detailed guide
- ✅ `deploy.ps1` - Automated deployment script
- ✅ `QUICK_START.md` - This file (quick reference)

---

**Need detailed help?** Read `DEPLOYMENT_GUIDE.md`

**Ready to deploy?** Run `.\deploy.ps1`

**Good luck! 🎓✨**

