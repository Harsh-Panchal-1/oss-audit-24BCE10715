# Open Source Audit Capstone Project: Git

### oss-audit-24bce10715

This repository contains my practical shell script submissions for the Open Source Software lab capstone project. For this audit, I chose to explore and analyze Git, auditing **Git** on **Ubuntu 24.04.4 (WSL2)**.

I’m **Harsh Panchal** (`Harsh Panchal`, reg no `24BCE10715`). I wrote a few small shell scripts to pull basic system info, check package info, audit a couple of directories, and scan a log file for keyword matches.

## What’s inside

- `script1.sh` - System Identity Report (kernel, distro, uptime, etc.) : Introduces the Linux system by displaying the distribution name, kernel version, current logged-in user, system uptime, current date/time, and a brief message about the open-source license covering the OS.

- `script2.sh` - FOSS Package Inspector for `git` : Checks if my chosen software (`git`) is installed on the system. It fetches the version details and uses a case statement to print a short, customized philosophical note about Git and a few other FOSS tools.

- `script3.sh` - Disk and Permission Auditor for a few common folders : Uses a `for` loop to iterate through important system directories (like `/etc`, `/var/log`, `/tmp`) as well as Git's global config directory (~/.config/git or ~/.gitconfig), reporting their exact permissions, ownership, and disk space usage.


- `script4.sh` - Log file analyzer (counts keyword matches) : Takes a log file path as an argument and reads it line-by-line using a `while` loop. It counts how many times a specific keyword (defaults to "error") appears in the file and prints a summary.

- `script5.sh` - Open Source Manifesto Generator (interactive) : An interactive script that asks the user three questions about their open-source usage and beliefs, concatenates the answers into a personalized paragraph, and saves it to a `.txt` file using the user's name.

## How to run the scripts

From the repo directory (`./oss-audit-24BCE10715`):

1. Make them executable (one-time):
   - `chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh`

2. Run them:
   - `./script1.sh`
   - `./script2.sh`
   - `./script3.sh`
   - `sudo ./script4.sh /var/log/syslog`
     - it defaults to `error`.
   - `./script5.sh`
     - It asks 3 questions and writes `manifesto_<username>.txt`

## Notes (things I ran into)

- For `script2.sh`, the lab manual mentions `rpm`, but Ubuntu is Debian-based, so I used `dpkg -l` to check whether `git` is installed
- `script4.sh` needs `sudo` when I point it at `/var/log/syslog` (normal user permissions can block reading that file)
- If `script1.sh` complains about `lsb_release`, install `lsb-release`:
  - `sudo apt install lsb-release`