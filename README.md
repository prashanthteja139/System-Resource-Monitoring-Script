# System-Resource-Monitoring-Script


A lightweight Bash script that automates system resource monitoring — logging **CPU**, **memory**, **disk usage**, **uptime**, and **top resource-hungry processes** into a single log file.  
Ideal for DevOps engineers, sysadmins, and Linux learners who want to automate performance tracking.

---

## ⚙️ Features

✅ Logs **CPU usage** in real time  
✅ Displays **memory and disk utilization**  
✅ Lists top 5 **memory-consuming processes**  
✅ Captures **system uptime**  
✅ Outputs all data to `/var/log/system_monitor.log`  
✅ Can be automated with **cron jobs** for daily reporting

---

## 📂 File Structure

system_monitor/
├── system_monitor.sh
└── README.md

yaml
Copy code

---

## 🚀 How to Use

1. **Clone the Repository**
   ```bash
   git clone https://github.com/prashanthteja139/system-monitor-script.git
   cd system-monitor-script
Make the Script Executable

bash
Copy code
chmod +x system_monitor.sh
Run the Script

bash
Copy code
sudo ./system_monitor.sh
View the Logs

bash
Copy code
cat /var/log/system_monitor.log
🕒 Automate via Cron
To schedule automatic daily system checks at 8 AM:

bash
Copy code
sudo crontab -e
0 8 * * * /path/to/system_monitor.sh

🧩 Example Log Output
yaml
Copy code
----------------------------------------
System Resource Report - 2025-10-27 08:00:00
----------------------------------------
CPU Load: 23%
Memory Usage: Used: 2.1G / Total: 7.7G (27.27%)
Disk Usage: Used: 45G / 100G (45% used)
Top 5 Memory Consuming Processes:
  PID COMMAND %MEM %CPU
  512 chrome  8.1  10.2
  389 code    7.4  9.5
System Uptime: up 2 days, 5 hours, 23 minutes
💡 Why This Project?
This script helps you:

Gain visibility into server health

Identify performance issues early

Practice automation and monitoring fundamentals in Linux

Build cron-based automation — a key DevOps skill

🛠️ Tech Stack
Language: Bash

OS: Linux (Ubuntu, CentOS, Amazon Linux, etc.)

Tools Used: top, awk, ps, df, free, uptime, cron

🧑‍💻 Author
Prashanth Teja
🚀 DevSecOps & Cloud Enthusiast | Ex-Amazon | Passionate about Automation
