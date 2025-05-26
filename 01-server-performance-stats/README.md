# 🖥️ Server Performance Stats

A lightweight Bash script to analyze and monitor essential server performance metrics on any Linux system.

## 📋 Project Overview

This project provides a simple yet comprehensive solution for monitoring server performance stats. The script is designed to be portable and run on any Linux distribution without additional dependencies.

## ✨ Features

The `server-stats.sh` script analyzes and displays:

- **Total CPU Usage** - Current CPU utilization percentage
- **Memory Usage Analysis** - Used vs Free memory with percentage breakdown  
- **Disk Usage Statistics** - Used vs Free disk space with percentage
- **Top 5 CPU-Intensive Processes** - Processes consuming most CPU resources
- **Top 5 Memory-Intensive Processes** - Processes using most RAM

## 🚀 Quick Start

### Prerequisites
- Linux operating system (any distribution)
- Bash shell (pre-installed on most Linux systems)
- Basic command line tools: `top`, `free`, `df`, `ps`

### Installation & Usage

1. **Clone the repository**
   ```bash
   git clone https://github.com/nimit0703/roadmap.sh--DevOps-Projects.git
   cd roadmap.sh--DevOps-Projects/01-server-performance-stats
   ```

2. **Make the script executable**
   ```bash
   chmod +x server-stats.sh
   ```

3. **Run the performance analysis**
   ```bash
   ./server-stats.sh
   ```

## 📊 Sample Output

```bash
===== SERVER PERFORMANCE STATS =====

>> Total CPU Usage:
CPU Usage: 23.4%

>> Memory Usage:
Used: 1847 MB | Free: 2048 MB | Usage: 47.40%

>> Disk Usage:
Used: 12G | Free: 18G | Usage: 40%

>> Top 5 Processes by CPU:
    PID    PPID CMD                         %MEM %CPU
   1234       1 /usr/bin/python3            2.1  45.2
   5678       1 /usr/sbin/apache2           1.8  12.3
   9101       1 /usr/bin/mysql              3.4   8.7
   1121       1 /bin/node server.js         1.2   5.1
   3141       1 /usr/sbin/nginx             0.8   2.9

>> Top 5 Processes by Memory:
    PID    PPID CMD                         %MEM %CPU
   9101       1 /usr/bin/mysql              3.4   8.7
   1234       1 /usr/bin/python3            2.1  45.2
   5678       1 /usr/sbin/apache2           1.8  12.3
   1121       1 /bin/node server.js         1.2   5.1
   0987       1 /usr/bin/firefox            1.0   1.2
```

## 🛠️ Technical Implementation

The script uses standard Linux commands:
- `top -bn1` - For CPU usage calculation
- `free -m` - For memory statistics  
- `df -h --total` - For disk usage analysis
- `ps -eo` - For process monitoring with custom sorting

## 🔧 Customization

You can easily extend this script by adding:
- OS version detection (`lsb_release -a`)
- System uptime (`uptime`)
- Load averages
- Logged in users (`who`)
- Failed login attempts (`grep "Failed" /var/log/auth.log`)
- Network statistics
- Temperature monitoring

## 🌐 Project Repository

**Main Repository:** https://github.com/nimit0703/roadmap.sh--DevOps-Projects  
**This Project:** https://github.com/nimit0703/roadmap.sh--DevOps-Projects/tree/main/01-server-performance-stats

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/enhancement`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/enhancement`)
5. Open a Pull Request

### Ideas for Contributions
- Add color output for better readability
- Implement historical data logging
- Create alerting thresholds
- Add JSON/CSV output formats
- Include network interface statistics

## 📝 Requirements Met

✅ **Total CPU usage** - Calculated from top command  
✅ **Total memory usage** - Free vs Used with percentages  
✅ **Total disk usage** - Free vs Used with percentages  
✅ **Top 5 processes by CPU** - Sorted by CPU consumption  
✅ **Top 5 processes by memory** - Sorted by memory usage  

## 🎯 Use Cases

- **System Administrators** - Quick server health checks
- **DevOps Engineers** - Integration into monitoring workflows  
- **Developers** - Local development environment monitoring
- **Students** - Learning Linux system administration
- **Automation** - Part of larger monitoring solutions

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

Created as a solution for server performance monitoring. Feel free to use, modify, and share!

---

**⭐ If this project helped you, please give it a star on GitHub!**

**🔗 Project URL:** https://github.com/nimit0703/roadmap.sh--DevOps-Projects/tree/main/01-server-performance-stats

---

## 🔙 Back to Main Repository

👈 **[View All DevOps Projects](https://github.com/nimit0703/roadmap.sh--DevOps-Projects)** - Explore more hands-on DevOps learning projects!
