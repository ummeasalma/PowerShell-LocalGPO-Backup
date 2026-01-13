# Local Group Policy Backup and Restore using LGPO

## Overview

This repository contains PowerShell scripts to **back up and restore Local Group Policy Objects (Local GPO)** on Windows machines using **LGPO.exe**
These scripts are useful for:
- Taking a backup of Local Group Policy settings
- Reapplying the same policies on another machine
- Quickly restoring policies after system changes or testing

---

## What is LGPO?

**LGPO.exe** (Local Group Policy Object Utility) is a Microsoft tool that allows administrators to:

- Export (backup) Local Group Policy settings
- Import (restore) Local Group Policy settings
- Manage Local GPOs via command line and scripts

LGPO.exe is commonly used in enterprise environments and is part of the **Microsoft Security Compliance Toolkit**.

> Note: LGPO.exe is **not included** in this repository and must be downloaded separately from Microsoft.

---

## Scripts in this Repository

### 1. `Backup-LocalGPO.ps1`

This script:
- Creates a backup directory
- Uses `LGPO.exe` to export the current Local Group Policy settings
- Copies ADMX (both ADMX+ADML files) policy definition files

---

### 2. `Restore-LocalGPO.ps1`

This script:
- Uses `LGPO.exe` to import a previously created Local GPO backup
- Forces a Group Policy refresh using `gpupdate /force`

---

### 3. `command to run.txt`

This file contains example commands and notes on how to run the scripts correctly.

---

## Prerequisites

- Windows OS
- PowerShell
- Administrator privileges
- **LGPO.exe** downloaded and available on the system

---

## How to Run the Scripts

### 1. Download LGPO.exe

Download LGPO.exe from Microsoft (Security Compliance Toolkit) and place it in a folder, for example:
C:\LGPO\LGPO.exe

---

### 2. Run PowerShell as Administrator

---

### 3. Run the Backup Script


.\Backup-LocalGPO.ps1

This command creates a backup of the current Local Group Policy settings using LGPO.exe.
The backup can later be used to restore the same policy configuration on this or another machine.

---

### 4. Run the Restore Script

.\Restore-LocalGPO.ps1

This will restore Local Group Policy settings from the backup and refresh the policy.

For detailed command: see command to run.txt


