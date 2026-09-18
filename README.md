# 🛠️ Reset Computers - IT Automation & Diagnostic Toolkit

![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Security](https://img.shields.io/badge/Security-Advanced-red?style=for-the-badge)
![Maintenance](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

Welcome to the official IT Automation repository of **Reset Computers**. This repository contains a curated collection of 200+ advanced PowerShell scripts designed for zero-touch (fileless) IT maintenance, advanced hardware diagnostics, network management, and cybersecurity auditing.

---

## 🏢 About Reset Computers
Based in Silvassa, **Reset Computers** is a premier IT sales and service firm managed by Suraj Mahla. We specialize in providing enterprise-grade IT solutions, including:
* **Advanced Networking:** Configuration of GRE, OSPF, static routing, DHCP end devices, and custom homelab setups (e.g., OPNsense Firewalls).
* **Surveillance Systems:** Deep troubleshooting and deployment of IP CCTV cameras and NVR systems.
* **Chip-Level & Hardware Repair:** Motherboard diagnostics, desktop/laptop repairs, and custom system assemblies.
* **AMC & IT Support:** Proactive server maintenance and automated helpdesk solutions using advanced PowerShell scripting.

---

## ⚡ Key Script Categories
Our script library is divided into specialized modules to handle everyday IT administration seamlessly:

- 💻 **Core Hardware & OS:** System diagnostics, RAM capacity analyzers, OS auto-healing, and temp file cleaners.
- 🌐 **Network & Connectivity:** Bandwidth analyzers, bulk IP pinger scripts across subnets, DNS flushers, and firewall testers.
- 📹 **CCTV & NVR Operations:** Auto-firewall configurations for remote viewing and VMS auto-restarters.
- 🔒 **Security & Vulnerability:** Active port checkers, USB data-theft blockers, SMBv1/UAC vulnerability scanners, and MAC spoofers.
- 🛠️ **Server Administration:** SQL Database auto-dumps, event log cleaners, and server health monitors.

---

## 🚀 How to Use (Fileless Execution Method)
You do not need to download or copy these scripts to a USB drive. You can execute them directly from the cloud onto any client machine using Windows PowerShell.

1. Open **Windows PowerShell** as Administrator on the target PC.
2. Enable TLS 1.2 (for secure connection) and run the script by replacing `ScriptName.ps1` with the desired script name:

```powershell
⚠️ Disclaimer
These scripts are designed for professional IT administrators and authorized AMC support engineers. Reset Computers is not responsible for any data loss, system instability, or misuse of these scripts. Always ensure you have appropriate backups before running advanced registry or hardware modification tools on client systems.

📞 Connect With Us
Looking for professional IT services, surveillance setups, or enterprise network deployments?

Location: Silvassa, Dadra and Nagar Haveli and Daman and Diu, India.

Firm: Reset Computers
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; irm [https://raw.githubusercontent.com/SURAJM167/Reset_Computers_Automation_Scripts/main/ScriptName.ps1](https://raw.githubusercontent.com/SURAJM167/Reset_Computers_Automation_Scripts/main/ScriptName.ps1) | iex
