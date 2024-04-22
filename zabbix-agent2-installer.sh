#!/bin/bash

# Check Ubuntu 20.04
if [[ $(lsb_release -rs) == "20.04" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu20.04_all.deb
    dpkg -i zabbix-release_6.4-1+ubuntu20.04_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    read -p "Please enter the Zabbix Server address: " zabbix_server
    read -p "Please enter the Zabbix ServerActive address: " zabbix_server_active
    read -p "Please enter the Zabbix Hostname: " zabbix_hostname
    sudo sed -i -e "s/^Server=127.0.0.1$/Server=$zabbix_server/" -e "s/^ServerActive=127.0.0.1$/ServerActive=$zabbix_server_active/" -e "s/^Hostname=Zabbix server$/Hostname=$zabbix_hostname/" /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2
    echo -e "\e[34mInstallation completed successfully.\e[0m"
    echo "This script is written by Atil and can be found at www.atil.ir"
# Check Ubuntu 22.04 (64-bit)
elif [[ $(lsb_release -rs) == "22.04" && $(uname -m) == "x86_64" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
    dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    read -p "Please enter the Zabbix Server address: " zabbix_server
    read -p "Please enter the Zabbix ServerActive address: " zabbix_server_active
    read -p "Please enter the Zabbix Hostname: " zabbix_hostname
    sudo sed -i -e "s/^Server=127.0.0.1$/Server=$zabbix_server/" -e "s/^ServerActive=127.0.0.1$/ServerActive=$zabbix_server_active/" -e "s/^Hostname=Zabbix server$/Hostname=$zabbix_hostname/" /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2
    echo -e "\e[34mInstallation completed successfully.\e[0m"
    echo "This script is written by Atil and can be found at www.atil.ir"
# Check Ubuntu 22.04 (ARM64)
elif [[ $(lsb_release -rs) == "22.04" && $(uname -m) == "aarch64" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/ubuntu-arm64/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
    dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    read -p "Please enter the Zabbix Server address: " zabbix_server
    read -p "Please enter the Zabbix ServerActive address: " zabbix_server_active
    read -p "Please enter the Zabbix Hostname: " zabbix_hostname
    sudo sed -i -e "s/^Server=127.0.0.1$/Server=$zabbix_server/" -e "s/^ServerActive=127.0.0.1$/ServerActive=$zabbix_server_active/" -e "s/^Hostname=Zabbix server$/Hostname=$zabbix_hostname/" /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2
    echo -e "\e[34mInstallation completed successfully.\e[0m"
    echo "This script is written by Atil and can be found at www.atil.ir"
# Check Debian 12
elif [[ $(lsb_release -rs) == "12" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian12_all.deb
    dpkg -i zabbix-release_6.4-1+debian12_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    read -p "Please enter the Zabbix Server address: " zabbix_server
    read -p "Please enter the Zabbix ServerActive address: " zabbix_server_active
    read -p "Please enter the Zabbix Hostname: " zabbix_hostname
    sudo sed -i -e "s/^Server=127.0.0.1$/Server=$zabbix_server/" -e "s/^ServerActive=127.0.0.1$/ServerActive=$zabbix_server_active/" -e "s/^Hostname=Zabbix server$/Hostname=$zabbix_hostname/" /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2
    echo -e "\e[34mInstallation completed successfully.\e[0m"
    echo "This script is written by Atil and can be found at www.atil.ir"
# Check Debian 11
elif [[ $(lsb_release -rs) == "11" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian11_all.deb
    dpkg -i zabbix-release_6.4-1+debian11_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    read -p "Please enter the Zabbix Server address: " zabbix_server
    read -p "Please enter the Zabbix ServerActive address: " zabbix_server_active
    read -p "Please enter the Zabbix Hostname: " zabbix_hostname
    sudo sed -i -e "s/^Server=127.0.0.1$/Server=$zabbix_server/" -e "s/^ServerActive=127.0.0.1$/ServerActive=$zabbix_server_active/" -e "s/^Hostname=Zabbix server$/Hostname=$zabbix_hostname/" /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2
    systemctl enable zabbix-agent2
    echo -e "\033[1;34m  _      ____   _____          _      _____   ____   ____ _______ \033[0m"
    echo -e "\033[1;34m | |    / __ \ / ____|   /\   | |    |  __ \ / __ \ / __ \__   __|\033[0m"
    echo -e "\033[1;34m | |   | |  | | |       /  \  | |    | |__) | |  | | |  | | | |   \033[0m"
    echo -e "\033[1;34m | |   | |  | | |      / /\ \ | |    |  _  /| |  | | |  | | | |   \033[0m"
    echo -e "\033[1;34m | |___| |__| | |____ / ____ \| |____| | \ \| |__| | |__| | | |   \033[0m"
    echo -e "\033[1;34m |______\____/ \_____/_/    \_\______|_|  \_\\____/ \____/  |_|   \033[0m"
    echo -e "\n"
    echo -e "\033[1;32mInstallation completed successfully :)\033[0m"
    echo -e "\033[1;32mThis script is written by Atil and can be found at www.atil.ir\033[0m"
else
    echo "Unsupported OS or version"
fi

else
    echo "Unsupported OS or version"
fi
