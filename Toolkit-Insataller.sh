#!/bin/bash

# Red Teaming Tools Installer Script
# Author: Issam Beniysa

echo "[*] Updating system..."
sudo apt update && sudo apt upgrade -y

echo "[*] Installing core tools..."
sudo apt install -y nmap wireshark netcat curl git python3 python3-pip build-essential
echo "[*] Installing Burp Suite..."
sudo snap install burpsuite

echo "[*] Installing Metasploit Framework..."
curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfinstall | sudo bash

echo "[*] Installing Recon-ng..."
git clone https://github.com/lanmaster53/recon-ng.git ~/tools/recon-ng
cd ~/tools/recon-ng && pip3 install -r REQUIREMENTS

echo "[*] Installing Empire..."
git clone https://github.com/BC-SECURITY/Empire.git ~/tools/Empire
cd ~/tools/Empire && ./setup/install.sh

echo "[*] Installing BloodHound and Neo4j..."
sudo apt install -y bloodhound neo4j

echo "[*] Installing other useful tools..."
sudo apt install -y gobuster sqlmap

echo "[*] Installing password cracking tools..."
sudo apt install -y john hydra hashcat

echo "[*] Installing wireless auditing tools..."
sudo apt install -y aircrack-ng wifite

echo "[*] Installing airodump-ng (part of aircrack-ng)..."

echo "[*] Installing Impacket..."
git clone https://github.com/SecureAuthCorp/impacket.git ~/tools/impacket
cd ~/tools/impacket && pip3 install .

echo "[*] Installing CrackMapExec..."
pip3 install crackmapexec

echo "[*] Installing Responder..."
git clone https://github.com/lgandx/Responder.git ~/tools/Responder

echo "[*] Installing Bettercap..."
sudo apt install -y 

echo "[*] Installing Recon-ng..."
git clone https://github.com/lanmaster53/recon-ng.git ~/tools/recon-ng
cd ~/tools/recon-ng && pip3 install -r REQUIREMENTS

echo "[*] Installing Amass..."
sudo snap install amass

echo "[*] Installing Gobuster..."
sudo apt install -y gobuster

echo "[*] Installing SQLMap..."
sudo apt install -y sqlmap

echo "[*] Cleaning up..."
sudo apt autoremove -y

echo "[✔] All tools installed successfully!"
 
