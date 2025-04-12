# 📦 AUR Package Installer for Arch Linux

This project contains a simple shell script to automate the reinstallation of your favorite AUR packages using [yay](https://github.com/Jguer/yay).

---

## 📁 Files

- **aur_packages.txt** – List of AUR packages you want to install.
- **install_aur_packages.sh** – Shell script to install the packages listed in aur_packages.txt.

---

## ⚙️ How to Use

1. **Clone or Download the Project Folder**

```bash
cd ~/Desktop/My-Power 

Make the Script Executable

chmod +x install_aur_packages.sh

    Edit aur_packages.txt (optional)
    Add or remove package names as needed. Each package should be on a new line.

    Run the Script

./install_aur_packages.sh

This script will:

    Check if yay is installed and install it via pacman if missing.
