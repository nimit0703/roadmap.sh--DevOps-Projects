# 🗃️ Log Archive Automation Script

A lightweight Bash script to automatically archive log directories into timestamped `.tar.gz` files and manage retention by deleting backups older than 2 minutes. Designed to work seamlessly on any Linux system with cron job support.

---

## 📋 Project Overview

This project provides an automated solution for backing up log files periodically using a cron job. The script compresses the contents of a specified directory and stores it in a `backup/` folder, maintaining only the recent backups for efficient storage management.

---

## ✨ Features

The `log-archive.sh` script performs the following tasks:

* ✅ Accepts a directory path (e.g., `logs/`) as input
* ✅ Archives contents into a timestamped `.tar.gz` file
* ✅ Automatically creates the `backup/` directory if not present
* ✅ Deletes backup files older than 2 minutes
* ✅ Can be scheduled with `cron` to run every minute

---


### 📦 Prerequisites

* Linux operating system (any distro)
* Bash shell
* `tar` and `find` utilities (pre-installed on most distros)



## 📂 Sample Output

After execution, the `backup/` folder will contain:

```
backup/
├── 20250603_113201.tar.gz
├── 20250603_113301.tar.gz
```

Files older than 2 minutes are automatically deleted every time the script runs.

---

## 🛠️ Technical Breakdown

The script uses:

* `tar -czf` – to compress files into `.tar.gz`
* `mkdir -p` – to ensure `backup/` exists
* `find -mmin +2 -delete` – to remove files older than 2 minutes


## 📝 Sample Script

```bash
#!/bin/bash

echo "log-archive"

dir_name=$1

if [ -z "$dir_name" ]; then
  echo "Usage: $0 <directory_name>"
  exit 1
fi

if [ ! -d "$dir_name" ]; then
  echo "Directory $dir_name does not exist."
  exit 1
fi

mkdir -p backup

archive_name="backup/$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$archive_name" -C "$dir_name" .

find backup -type f -name "*.tar.gz" -mmin +2 -delete
```

---

## 🎯 Use Cases

* **DevOps Pipelines** – Temporary log rotation in CI/CD
* **System Admins** – Lightweight periodic log archiving
* **Backup Automation** – Simple backup & retention for small files
* **Learning Purpose** – Understand cron + bash scripting automation

---

## 🤝 Contributing

Feel free to fork, modify, and contribute!

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 👨‍💻 Author

Crafted to solve simple real-world automation needs with zero dependencies.

---

**⭐ If this script helps you, star the repo and share with others!**
🔗 GitHub Repo: `https://github.com/nimit0703/roadmap.sh--DevOps-Projects`
