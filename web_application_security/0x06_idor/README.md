# Insecure Direct Object Reference (IDOR) – CyberBank Project

## Project Overview

This project simulates real-world IDOR vulnerabilities within a fictional banking app called **CyberBank**. The goal is to identify and exploit insecure direct object references in various parts of the application.

All activities were performed within a legal, sandboxed environment for educational purposes only.

---

## Tasks Completed

### ✅ Task 0 – Uncovering User IDs
- Discovered other users by inspecting `/api/customer/contacts`
- Used their `contact_id` to send requests like `/api/customer/info/{contact_id}`
- Successfully retrieved personal information of another user
- **Flag:** Stored in `0-flag.txt`

---

### ✅ Task 1 – Enumerating Account Numbers for Balance Disclosure
- Extracted account IDs from previous task’s user info
- Queried `/api/accounts/info` with foreign `account_id`
- Retrieved account balances and other private financial details
- **Flag:** Stored in `1-flag.txt`

---

### ✅ Task 2 – Manipulating Wire Transfers to Inflate Balance
- Intercepted `POST /api/accounts/transfer_to/{contact_id}`
- Sent a **negative transfer amount**, which added funds to my account
- Repeated until balance exceeded $10,000
- **Flag:** Stored in `2-flag.txt`

---

### ✅ Task 3 – Bypassing 3D Secure Verification for Unauthorized Payment
- Initiated payment with another user's card number
- Intercepted OTP submission to `/api/cards/confirm_payment/{id}`
- Injected my session and OTP while keeping victim's card number
- Successfully verified transaction using my credentials
- **Flag:** Stored in `3-flag.txt`

---

## Tools Used
- 🛡️ **Burp Suite** – Intercept, repeat, and modify HTTP requests
- 🧠 **Manual Analysis** – Network tab, JSON APIs, and endpoint enumeration
- 🐧 **Kali Linux** – Testing platform

---

## IDOR Mitigation Best Practices
- Never trust user-controlled input (even if it’s an ID)
- Enforce **object-level authorization** on the server
- Use **random UUIDs** or indirect references instead of guessable IDs
- Implement consistent and centralized access control logic
- Log and monitor abnormal access patterns

---

## Final Notes

This project was an amazing hands-on demonstration of how simple logic flaws can lead to serious financial and data breaches. It highlights the need for proper access control and session validation in every layer of a web application.