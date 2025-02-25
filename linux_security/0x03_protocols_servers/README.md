"# Protocols and Servers Project

This repository contains scripts for auditing and securing Linux servers by checking various network protocols and configurations.

## Files and Descriptions

- **0-iptables.sh** - Display all current iptables rules in a readable format, including line numbers.
- **1-audit.sh** - Check for non-standard SSH configuration settings.
- **2-harden.sh** - List all world-writable directories and secure them.
- **3-identify.sh** - Check for unpatched vulnerabilities using Lynis.
- **4-nfs.sh** - Scan for NFS shares accessible by anyone on the network.
- **5-snmp.sh** - Find SNMP configurations that allow public access.
- **6-smtp.sh** - Check SMTP server configuration for missing STARTTLS.
- **7-dos.sh** - Simulate a basic DoS attack on an HTTP server.
- **8-cipher.sh** - Test SSL/TLS server ciphers for weaknesses using Nmap.
- **9-firewall.sh** - Set up a basic iptables firewall that blocks all incoming traffic except SSH.

## Usage
Each script should be run with sudo privileges where required. For example:

\`\`\`
sudo ./0-iptables.sh
\`\`\`

Ensure all scripts are executable:

\`\`\`
chmod +x *.sh
\`\`\`

## Requirements
- Scripts should run on Kali Linux 2023.2
- Scripts must be in Bash and follow the Betty coding style
- The first line of all scripts should be `#!/bin/bash`
- Scripts must end with a newline character