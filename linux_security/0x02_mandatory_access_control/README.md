# Mandatory Access Control (MAC) in Linux

This project focuses on learning and implementing **Mandatory Access Control (MAC)** in Linux using **SELinux and AppArmor**. The tasks involve scripting various commands to manage security policies, user mappings, and access controls.

## 📂 Project Structure

Each script performs a specific task related to **SELinux** or **AppArmor**:

| Script Name            | Description |
|------------------------|-------------|
| `0-analyse_mode.sh`   | Displays the current SELinux mode (`Enforcing`, `Permissive`, or `Disabled`). |
| `1-security_match.sh` | Shows the status of AppArmor security profiles. |
| `2-list_http.sh`      | Lists all SELinux-managed ports related to HTTP services. |
| `3-add_port.sh`       | Adds a new SELinux HTTP port (TCP 81). |
| `4-list_user.sh`      | Lists all SELinux user mappings. |
| `5-add_selinux.sh`    | Adds a new SELinux user mapping (Accepts username as an argument). |
| `6-list_booleans.sh`  | Displays all SELinux boolean values. |
| `7-set_sendmail.sh`   | Enables the `httpd_can_sendmail` SELinux boolean permanently. |


### 🔧 System Requirements
Kali Linux 2023.2
SELinux and AppArmor installed and configured
Allowed editors: vi, vim, emacs

### 🎯 Learning Objectives
By completing this project, you should be able to:

Understand the differences between SELinux and AppArmor.
Manage SELinux policies, labels, and booleans.
Use semanage to configure SELinux users, ports, and settings.
Work with AppArmor profiles for process security.


### 📜 Additional Resources
SELinux Wiki
AppArmor Documentation
Linux Security Modules (LSM)
