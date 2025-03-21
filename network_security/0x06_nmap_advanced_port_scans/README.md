# Nmap Advanced Port Scans

## 🔐 Project Overview

This project is part of the Holberton School Cybersecurity curriculum and focuses on advanced Nmap scanning techniques. The goal is to deepen understanding of stealth scanning methods and how they are used to analyze network security, identify potential vulnerabilities, and test firewall configurations.

All scans are performed using the Nmap tool on Kali Linux, leveraging advanced TCP flag manipulation, timing adjustments, packet fragmentation, and custom scan configurations.

---

## 🧠 Key Concepts

- Advanced port scanning techniques (NULL, FIN, Xmas, ACK, Window, and Custom scans)
- TCP/IP flag manipulation for stealthy reconnaissance
- Firewall rule analysis through stateless and stateful responses
- Packet fragmentation to bypass filtering systems
- Efficient scan configuration through CLI scripting

---

## ⚙️ Technical Requirements

- All scripts are written in **Bash**
- Each script is exactly **2 lines long**
- The first line must be `#!/bin/bash`
- Scripts must be **executable**
- Must use **`sudo`** to run Nmap commands
- No usage of: `&&`, `||`, `;`, `echo`, or quotes around variables
- Must use **single hyphen flags** for Nmap (e.g., `-sS`)
- Files are tested in **Kali Linux**

---

## 📁 Repository Structure

.
├── 0-null_scan.sh
├── 1-fin_scan.sh
├── 2-xmas_scan.sh
├── 3-maimon_scan.sh
├── 4-ask_scan.sh
├── 5-window_scan.sh
├── 6-custom_scan.sh
└── README.md


### 📌 Notes
These scripts are intended for educational and authorized security testing purposes only. Unauthorized use of port scanning tools on external networks is strictly prohibited and may violate local laws or organizational policies.

## 👨‍💻 Author
Joshua Santiago
Project: Nmap Advanced Port Scans
