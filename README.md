# Wazuh Endpoint Monitoring

Windows endpoint monitoring and threat detection project using Wazuh, Sysmon, Active Directory, and Group Policy.

## Project Overview

This project demonstrates endpoint security monitoring in a Windows Server environment using Wazuh and Sysmon.

The project focuses on deploying security monitoring components through Group Policy and collecting endpoint security events from Windows endpoints.

## Technologies & Tools

- Wazuh
- Wazuh Agent
- Sysmon
- Windows Server
- Active Directory
- Group Policy
- PowerShell
- Windows CMD

## Project Features

- Wazuh Agent deployment
- Sysmon installation and configuration
- Centralized endpoint monitoring
- Group Policy-based deployment
- Windows security event monitoring
- File Integrity Monitoring (FIM)
- Endpoint threat detection
- Windows event log collection

## Project Environment

- Windows Server
- Active Directory Domain
- Group Policy
- Wazuh Server
- Windows Endpoint

## Repository Files

- `Install-Sysmon.cmd` — Script used to install Sysmon on Windows endpoints.
- `sysmonconfig.xml` — Sysmon configuration used for endpoint event collection.
- `ossec.conf.example` — Example Wazuh Agent configuration for endpoint monitoring.
- `README.md` — Project documentation.

## Deployment Overview

1. Configure the Windows Server and Active Directory environment.
2. Create and configure the required Group Policy.
3. Deploy Sysmon to Windows endpoints.
4. Configure the Wazuh Agent.
5. Connect the endpoint to the Wazuh Manager.
6. Collect Windows security events and Sysmon events.
7. Monitor endpoint activity through the Wazuh platform.

## Project Purpose

The purpose of this project is to demonstrate practical experience with:

- Windows Server administration
- Active Directory
- Group Policy
- Endpoint monitoring
- Security event collection
- Sysmon
- Wazuh
- Basic threat detection

## Disclaimer

This project was created as a personal cybersecurity and Windows administration lab for learning and demonstration purposes.
