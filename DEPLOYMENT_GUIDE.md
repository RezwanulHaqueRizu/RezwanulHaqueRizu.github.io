# GitHub Pages Deployment Guide for Your Portfolio Website

## 🎯 Current Status
✅ Configuration updated for GitHub Pages  
✅ Changes committed to local repository  
✅ Ready to deploy!

---

## 📌 Important: Choose Your GitHub Username

You have TWO options. Choose ONE:

### **Option A: Use username `rezwanulhaque`** (Currently configured)
- Your site will be: `https://rezwanulhaque.github.io`
- Repository: `rezwanulhaque/rezwanulhaque.github.io`

### **Option B: Use username `Rizu-17`** (Your current GitHub account)
- Your site will be: `https://Rizu-17.github.io/rezwanulhaque.github.io`
- Repository: `Rizu-17/rezwanulhaque.github.io`
- **Requires updating `_config.yml`** (see instructions below)

---

## 🚀 Deployment Steps

### **OPTION A: Deploy with username `rezwanulhaque`**

#### Step 1: Create GitHub Repository
1. Go to [GitHub](https://github.com) and sign in with username `rezwanulhaque`
   - If this account doesn't exist, create it first at https://github.com/signup
2. Click the **"+"** icon (top right) → **"New repository"**
3. Repository name: `rezwanulhaque.github.io` (MUST be exactly this)
4. Description: "Personal Portfolio Website"
5. Make it **Public**
6. **DO NOT** initialize with README, .gitignore, or license
7. Click **"Create repository"**

#### Step 2: Push Your Code
Open PowerShell in your project directory and run:

```powershell
cd "E:\Portfolio Website\rezwanulhaque.github.io"

# Push to GitHub
git push -u origin master
```

#### Step 3: Enable GitHub Pages
1. Go to your repository: `https://github.com/rezwanulhaque/rezwanulhaque.github.io`
2. Click **"Settings"** tab
3. In the left sidebar, click **"Pages"**
4. Under **"Source"**, select:
   - Branch: `master` (or `main`)
   - Folder: `/ (root)`
5. Click **"Save"**

#### Step 4: Wait for Deployment
- GitHub will automatically build and deploy your site
- This takes 2-5 minutes
- You'll see a green checkmark when ready
- Your site will be live at: **https://rezwanulhaque.github.io**

---

### **OPTION B: Deploy with username `Rizu-17`**

If you want to keep your existing `Rizu-17` GitHub account:

#### Step 1: Update Configuration
Run these commands in PowerShell:

```powershell
cd "E:\Portfolio Website\rezwanulhaque.github.io"

# Switch back to Rizu-17 remote
git remote set-url origin https://github.com/Rizu-17/rezwanulhaque.github.io.git
```

Then update `_config.yml`:
- Line 16: Change `url` to `https://Rizu-17.github.io`
- Line 18: Change `baseurl` to `"/rezwanulhaque.github.io"`
- Line 19: Change `repository` to `"Rizu-17/rezwanulhaque.github.io"`

Save and commit:
```powershell
git add _config.yml
git commit -m "Update config for Rizu-17 account"
```

#### Step 2: Ensure Repository Exists
1. Go to https://github.com/Rizu-17/rezwanulhaque.github.io
2. If it doesn't exist, create it:
   - Click **"+"** → **"New repository"**
   - Name: `rezwanulhaque.github.io`
   - Make it **Public**
   - **DO NOT** initialize with any files
   - Click **"Create repository"**

#### Step 3: Push Your Code
```powershell
git push -u origin master
```

#### Step 4: Enable GitHub Pages
1. Go to: `https://github.com/Rizu-17/rezwanulhaque.github.io`
2. Click **"Settings"** → **"Pages"**
3. Source: Branch `master`, folder `/ (root)`
4. Click **"Save"**
5. Your site will be live at: **https://Rizu-17.github.io/rezwanulhaque.github.io**

---

## ✅ Verification Steps

After deployment:

1. **Check Build Status:**
   - Go to your repository on GitHub
   - Click the **"Actions"** tab
   - You should see "pages build and deployment" workflow
   - Wait for the green checkmark ✅

2. **Visit Your Site:**
   - Option A: https://rezwanulhaque.github.io
   - Option B: https://Rizu-17.github.io/rezwanulhaque.github.io

3. **Check for Issues:**
   - If you see a 404 error, wait a few more minutes
   - If still not working after 10 minutes, check the Actions tab for errors

---

## 🔧 Troubleshooting

### Issue: "Repository not found" when pushing
**Solution:** Make sure the repository exists on GitHub and you're logged in correctly
```powershell
# Configure git credentials
git config --global user.name "Your GitHub Username"
git config --global user.email "your-email@example.com"

# Try pushing again with authentication
git push -u origin master
```

### Issue: 404 Error after deployment
**Solutions:**
1. Wait 5-10 minutes for GitHub to build the site
2. Verify GitHub Pages is enabled in Settings → Pages
3. Check that the branch name matches (master vs main)
4. Clear your browser cache and try again

### Issue: CSS not loading / Site looks broken
**Solution:** This is usually a `baseurl` issue
- For user sites (`username.github.io`): baseurl should be `""`
- For project sites: baseurl should be `"/repository-name"`

### Issue: Images not showing
**Solution:** Ensure images are in the `/images/` folder and referenced correctly:
```markdown
![Description](/images/your-image.jpg)
```

---

## 📝 Customizing Your Site

After successful deployment, you can customize:

1. **Personal Information** (`_config.yml`):
   - Update author name, bio, email
   - Add social media links (LinkedIn, GitHub, etc.)
   - Update ORCID, Google Scholar links

2. **Publications** (`_publications/` folder):
   - Add your research papers
   - Format: YYYY-MM-DD-paper-title.md

3. **Projects** (`_portfolio/` folder):
   - Showcase your projects
   - Add images and descriptions

4. **CV/Resume** (`_pages/cv.md`):
   - Update your education, experience
   - Add achievements and awards

5. **Blog Posts** (`_posts/` folder):
   - Write technical blogs
   - Share research insights

---

## 🔄 Making Updates

Whenever you make changes:

```powershell
cd "E:\Portfolio Website\rezwanulhaque.github.io"

# Stage changes
git add -A

# Commit with descriptive message
git commit -m "Update publications and projects"

# Push to GitHub
git push origin master
```

GitHub will automatically rebuild and redeploy your site within a few minutes.

---

## 📚 Additional Resources

- **Jekyll Documentation:** https://jekyllrb.com/docs/
- **GitHub Pages Guide:** https://docs.github.com/en/pages
- **Academic Pages Template:** https://academicpages.github.io/
- **Markdown Guide:** https://www.markdownguide.org/

---

## 🎓 Best Practices

1. **Regular Updates:** Keep your publications and projects current
2. **Professional Bio:** Write a clear, concise bio
3. **Quality Images:** Use professional profile photos
4. **Working Links:** Regularly check all external links
5. **Mobile Friendly:** The template is responsive, but always test on mobile
6. **SEO Optimization:** Fill in meta descriptions and titles
7. **Google Scholar:** Link your Google Scholar profile
8. **ORCID:** Create and link your ORCID ID

---

## 🆘 Need Help?

If you encounter issues:

1. Check the **Actions** tab on GitHub for build errors
2. Review the [GitHub Pages documentation](https://docs.github.com/en/pages)
3. Post questions on [Academic Pages Discussions](https://github.com/academicpages/academicpages.github.io/discussions)
4. Check for similar issues in the [Issues section](https://github.com/academicpages/academicpages.github.io/issues)

---

**Good luck with your portfolio website! 🎉**

