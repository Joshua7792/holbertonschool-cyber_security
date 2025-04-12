# Web Application Forensics - Amateur

**Project Directory:** `web_application_security/0x0c_web_application_foresics`

## 📚 Description

This project focuses on Web Application Forensics by analyzing logs from a compromised system. It uses `auth.log` and `dmesg` to determine the attack method, affected user accounts, operating system information, and firewall changes. The goal is to extract actionable intelligence and improve defensive strategies.

## 🧠 Learning Objectives

By the end of this project, you should be able to:
- Define Digital Forensics and Web Application Forensics
- Analyze web application and authentication logs
- Identify compromised accounts and attacker IPs
- Understand firewall rule changes
- Document findings clearly in a forensic report

## 📂 Project Files

| File Name        | Description                                              |
|------------------|----------------------------------------------------------|
| `0-service.sh`   | Detects which service was exploited (sshd).             |
| `1-operating.sh` | Retrieves operating system version from `dmesg`.         |
| `2-accounts.sh`  | Identifies the compromised account (`root`).             |
| `3-ips.sh`       | Counts distinct attacker IPs (18 total).                 |
| `4-firewall.sh`  | Counts how many firewall rules were added (6 rules).     |
| `5-users.sh`     | Lists users created on the system.