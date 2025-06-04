
# GitHub Actions: Auto Deployment to GitHub Pages

This repository contains a GitHub Actions workflow that **automatically deploys a static site to GitHub Pages** whenever changes are made to the `index.html` file in the `04-github-pages-deployment/` folder on the `main` branch.

---

## 📂 Project Structure

```
roadmap.sh--DevOps-Projects/
├── .github/
│   └── workflows/
│       └── deploy.yml  <-- GitHub Actions workflow file
├── 04-github-pages-deployment/
│   └── index.html      <-- Your static HTML site
```

---

## 🚀 Deployment Workflow

The deployment is handled by GitHub Actions using the following workflow:

### 🔁 Trigger Conditions

The workflow runs automatically when:
- A **push** is made to the `main` branch **and**
- The `04-github-pages-deployment/index.html` file is modified

You can also run it manually via the **Actions tab**.

---

## 🛠️ Workflow Summary

Here’s what the workflow does:

1. **Checkout the repository**
2. **Configure GitHub Pages**
3. **Upload the contents** of `04-github-pages-deployment` as a static artifact
4. **Deploy to GitHub Pages** via GitHub Actions

---

## ✅ GitHub Pages Setup

Before using this workflow, ensure the following:

1. Navigate to your repo’s **Settings → Pages**
2. Under **Build and deployment**, choose:
   - **Source**: `GitHub Actions`
3. Save the settings

---

## 🌐 Deployed Site URL

After successful deployment, your static website will be accessible at:

```
https://<your-github-username>.github.io/roadmap.sh--DevOps-Projects/
```

Replace `<your-github-username>` with your actual GitHub handle.

---

## 🧪 Example HTML

Your `index.html` file could be as simple as:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Hello GitHub Pages</title>
  </head>
  <body>
    <h1>This site was deployed using GitHub Actions 🚀</h1>
  </body>
</html>
```

---

## 💬 Want to Contribute?

Feel free to fork the repo and submit a PR with improvements, fixes, or suggestions. All contributions are welcome!

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
