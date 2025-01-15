# OWASP Top 10 Project

## Description
This repository contains solutions for tasks related to the OWASP Top 10 vulnerabilities. The exercises involve identifying and mitigating common web application security flaws. Each task focuses on a specific vulnerability and provides practical hands-on experience to understand and address the risks.

## Repository Structure
```
web_application_security/
├── 0x01_owasp_top_10/
│   ├── 0-flag.txt          # Task 0: Broken Access Control flag
│   ├── 1-xor_decoder.sh    # Task 1: Cryptographic Failures - XOR Decoder Script
│   ├── 2-flag.txt          # Task 2: Cryptographic Failures - Catch the Flag
│   ├── 3-flag.txt          # Task 3: Injection (Stored XSS) - Part 1 Flag
│   ├── 4-vuln.txt          # Task 4: Injection (Stored XSS) - Part 2 Vulnerable Field
│   ├── 5-flag.txt          # Task 5: Injection (Stored XSS) - Part 3 Flag
```

## Tasks

### Task 0: (A1:2021) - Broken Access Control
- **Objective:** Tamper the `hijack_session` cookie to gain unauthorized access to another session.
- **Target URL:** `http://web0x01.hbtn/a1/hijack_session`
- **Steps:**
  1. Analyze the `hijack_session` cookie pattern.
  2. Modify the cookie to hijack a session.
  3. Retrieve and save the flag.
- **File:** `0-flag.txt`

### Task 1: (A2:2021) - Cryptographic Failures - Scripting
- **Objective:** Create a Bash script to decode XOR WebSphere strings.
- **Usage:**
  ```bash
  ./1-xor_decoder.sh {xor}KzosKw==
  ```
- **File:** `1-xor_decoder.sh`

### Task 2: (A2:2021) - Cryptographic Failures - Catch the Flag
- **Objective:** Decrypt the password using the script from Task 1 and retrieve the flag from the login page.
- **Target URL:** `http://[MACHINE-IP]/a2/crypto_encoding_failure/`
- **File:** `2-flag.txt`

### Task 3: (A3:2021) - Injection [Stored XSS] - Part 1
- **Objective:** Identify three profiles, follow them, and retrieve the flag.
- **Target URL:** `http://[MACHINE-IP]/a3/xss_stored/profile/[PROFILE-ID]`
- **File:** `3-flag.txt`

### Task 4: (A3:2021) - Injection [Stored XSS] - Part 2
- **Objective:** Identify the vulnerable input field on the profile edit page.
- **Target URL:** `http://[MACHINE-IP]/a3/xss_stored/edit`
- **Steps:**
  1. Test input fields for XSS vulnerability.
  2. Submit the vulnerable field name.
- **File:** `4-vuln.txt`

### Task 5: (A3:2021) - Injection [Stored XSS] - Part 3
- **Objective:** Craft and propagate an XSS payload to mimic the Samy worm.
- **Steps:**
  1. Create a payload that automatically follows you and propagates.
  2. Insert the payload into the vulnerable input field.
  3. Interact with bots to spread the worm and retrieve the flag.
- **File:** `5-flag.txt`

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/holbertonschool-cyber_security.git
   ```
2. Navigate to the project directory:
   ```bash
   cd web_application_security/0x01_owasp_top_10
   ```
3. Execute the scripts and follow the instructions provided in each task description.

## Tools and Resources
- **Tools:**
  - Browser DevTools
  - Burp Suite
  - OWASP ZAP
- **References:**
  - [OWASP Official Website](https://owasp.org/)
  - [OWASP Top 10 Proactive Controls](https://owasp.org/www-project-proactive-controls/)
  - [OWASP Cheat Sheet Series](https://cheatsheetseries.owasp.org/)


This project is part of the **Holberton School Cybersecurity Curriculum**.