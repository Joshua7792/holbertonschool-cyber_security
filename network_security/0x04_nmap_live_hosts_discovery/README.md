# 📡 **Nmap Live Host Discovery**

## 📖 **Project Overview**
This project focuses on using **Nmap**, a powerful network scanning tool, to perform **live host discovery** using various scanning techniques. You'll learn how to detect active devices on a network, bypass firewalls, and use different protocols for host enumeration.

---

## 🎯 **Learning Objectives**
By the end of this project, you should be able to explain:

1. **What Nmap is** and its core functionality.
2. **How Nmap works** and the different scanning techniques.
3. **What subnetworks are** and how they are structured.
4. **How to enumerate targets** on a network.
5. **What ARP Scan is** and when to use it.
6. **ICMP Echo, Timestamp, and Address Mask Scans**.
7. **TCP SYN, TCP ACK, and UDP Ping Scans**.
8. **What Nmap can detect**, including live hosts and open ports.
9. **How to scan IP addresses and ports using Nmap**.

---

## 💻 **Project Requirements**
- Scripts must be written in **Bash** (`.sh` extension).
- Use **Nmap** for scanning tasks.
- Each script must:
   - Accept a **subnetwork as an argument ($1)**.
   - Avoid using quotes (`"`) around `$1`.
   - Have exactly **2 lines** (`wc -l` should return `2`).
   - End with a **newline**.
- Scripts must follow the **Betty style guide**.
- Run scripts as a **privileged user** (`sudo` or `root`).
- Place all scripts in the directory: `network_security/0x04_nmap_live_hosts_discovery`.

---

## 🛠️ **Tasks**

### **0. ARP Scan**
- **File:** `0-arp_scan.sh`
- **Description:** Discover live hosts on a local subnet using **ARP scan**.
- **Command Example:**
   ```bash
   sudo ./0-arp_scan.sh 192.168.1.0/24

## **1. ICMP Echo Scan**
- **File:** `1-icmp_echo_scan.sh`  
- **Description:** Discover live hosts using **ICMP Echo requests**.  
- **Command Example:**  
   ```bash
   sudo ./1-icmp_echo_scan.sh 6.19.100.0/24
   ```

---

## **2. ICMP Timestamp Scan**
- **File:** `2-icmp_timestamp_scan.sh`  
- **Description:** Discover live hosts using **ICMP Timestamp requests**.  
- **Command Example:**  
   ```bash
   sudo ./2-icmp_timestamp_scan.sh 6.19.100.0/24
   ```

---

## **3. ICMP Address Mask Scan**
- **File:** `3-icmp_address_mask_scan.sh`  
- **Description:** Discover live hosts using **ICMP Address Mask requests**.  
- **Command Example:**  
   ```bash
   sudo ./3-icmp_address_mask_scan.sh 6.19.100.0/24
   ```

---

## **4. TCP SYN Ping Scan**
- **File:** `4-tcp_syn_ping.sh`  
- **Description:** Discover live hosts using **TCP SYN Ping** on ports **22, 80, 443**.  
- **Command Example:**  
   ```bash
   sudo ./4-tcp_syn_ping.sh 6.19.100.0/24
   ```

---

## **5. TCP ACK Ping Scan**
- **File:** `5-tcp_ack_ping.sh`  
- **Description:** Discover live hosts using **TCP ACK Ping** on ports **22, 80, 443**.  
- **Command Example:**  
   ```bash
   sudo ./5-tcp_ack_ping.sh 6.19.100.0/24
   ```

---

## **6. UDP Ping Scan**
- **File:** `6-udp_ping_scan.sh`  
- **Description:** Discover live hosts using **UDP Ping** on ports **53, 161, 162**.  
- **Command Example:**  
   ```bash
   sudo ./6-udp_ping_scan.sh 6.19.100.0/24
   ```

---

## **7. Capture the Flag**
- **File:** `100-flag.txt`  
- **Description:** Perform a **UDP version detection scan** on ports **200-300** to capture the flag.  
- **Command Example:**  
   ```bash
   sudo nmap -sV -p200-300 6.19.100.0/24
   ```

---

## 📚 **Useful Nmap Resources**
- [Nmap Official Documentation](https://nmap.org/docs.html)  
- [Nmap Options Summary](https://nmap.org/book/man-briefoptions.html)  
- [Nmap Target Specification](https://nmap.org/book/man-target-specification.html)  
- [Nmap Host Discovery](https://nmap.org/book/man-host-discovery.html)  

---

## 🧠 **Key Nmap Flags**
- `-sn`: Ping scan only, no port scan.  
- `-Pn`: Skip host discovery, assume hosts are up.  
- `-PS`: TCP SYN ping.  
- `-PA`: TCP ACK ping.  
- `-PU`: UDP ping.  
- `-oN`: Save output in plain text.  
- `-sV`: Service version detection.  

---

## 📝 **Author**
- **Repository:** [holbertonschool-cyber_security](https://github.com/holbertonschool-cyber_security)  
- **Directory:** `network_security/0x04_nmap_live_hosts_discovery`  

---

## 🚀 **How to Run Scripts**
1. **Clone the repository:**  
   ```bash
   git clone https://github.com/holbertonschool-cyber_security.git
   cd network_security/0x04_nmap_live_hosts_discovery
   ```
2. **Give execution permission:**  
   ```bash
   chmod +x *.sh
   ```
3. **Run a script:**  
   ```bash
   sudo ./0-arp_scan.sh 192.168.1.0/24
   ```

---

## ✅ **Evaluation Criteria**
- Scripts execute successfully.  
- Correct Nmap flags are used.  
- Output matches expected results.  
- Code follows **Betty style guidelines**.  
```
