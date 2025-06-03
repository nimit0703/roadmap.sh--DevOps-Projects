# 📊 NGINX Log Analyzer

A lightweight Bash script that analyzes an NGINX access log and provides insights such as the most active IPs, frequently accessed paths, status codes, and user agents.

---

## 📋 Project Overview

This project helps you practice shell scripting by analyzing a sample NGINX log file. It automatically downloads the log if not already present and extracts meaningful metrics using standard Linux CLI tools.

---

## ✨ Features

The `nginx-log.sh` script provides:

- 🔢 **Top 5 IP addresses** with the most requests
- 🌐 **Top 5 requested paths**
- ✅ **Top 5 HTTP response status codes**
- 🧠 **Top 5 user agents**

---

## 🚀 Quick Start

### 🧰 Prerequisites

- Linux/macOS system with `bash`
- Tools: `curl`, `awk`, `sort`, `uniq`, `head`

---

### 📥 Installation & Usage

1. **Clone the repository or copy the script**

   ```bash
   git clone https://github.com/nimit0703/roadmap.sh--DevOps-Projects.git
   cd nginx-log-analyzer
