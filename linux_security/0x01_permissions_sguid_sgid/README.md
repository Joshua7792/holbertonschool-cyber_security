# Permissions, SUID & SGID

## Project Overview
This project focuses on understanding and managing Linux file permissions, including user and group permissions, SUID, SGID, and best security practices. The tasks involve writing Bash scripts to automate permission management and user/group administration.

## Learning Objectives
By the end of this project, you should be able to:
- Understand the three user-based permission groups in Linux.
- Use the Linux commands `chmod`, `sudo`, `su`, `chown`, and `chgrp` effectively.
- Explain the purpose and usage of `setuid` and `setgid` in Linux file permissions.
- Differentiate between the `chown` and `chgrp` commands.
- Apply best practices for managing file permissions in Linux.
- Audit file permission changes on a system.
- Understand and use `umask` in Linux.

## Project Structure
This project consists of multiple Bash scripts stored in the `linux_security/0x01_permissions_sguid_sgid` directory:

| File Name | Description |
|-----------|-------------|
| `0-add_user.sh` | Adds a new user and sets a password. |
| `1-add_group.sh` | Creates a group, assigns file ownership, and sets permissions. |
| `2-sudo_nopass.sh` | Grants a user permission to execute commands without entering a password. |
| `3-find_files.sh` | Searches for SUID vulnerabilities in a directory. |
| `4-find_suid.sh` | Lists all files with the SUID bit set in a directory. |
| `5-find_sgid.sh` | Lists all files with the SGID bit set in a directory. |
| `6-check_files.sh` | Finds files with SUID/SGID modified in the last 24 hours. |
| `7-file_read.sh` | Sets read-only permissions for others in a directory. |
| `8-change_user.sh` | Changes file ownership from `user2` to `user3`. |
| `9-empty_file.sh` | Grants full permissions to empty files in a directory. |

## Usage
### Running the Scripts
Each script accepts command-line arguments. Example usage:
```bash
sudo ./0-add_user.sh username password
sudo ./1-add_group.sh group_name file_name
sudo ./2-sudo_nopass.sh username
```
### Permissions
Ensure scripts are executable before running them:
```bash
chmod +x script_name.sh
```
### Testing Environment
- All scripts are tested on Kali Linux.
- You must substitute the IP range with `$1`.
- All files should end with a new line.
- The first line of all scripts should be:
```bash
#!/bin/bash
```
- Scripts should follow the Betty style guidelines (`betty-style.pl` and `betty-doc.pl`).

## Resources
- [Linux Permissions](https://linux.die.net/man/1/chmod)
- [Understanding Special Permissions](https://linux.die.net/man/8/chown)
- [Finding SUID/SGID Files](https://linux.die.net/man/8/find)
- [Umask Guide](https://linux.die.net/man/2/umask)

## Contributing
If you wish to improve this project, ensure your changes align with the given style guidelines and submit a pull request.

## License
This project is licensed under the MIT License.