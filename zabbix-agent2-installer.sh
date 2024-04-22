#!/bin/bash

# Check Ubuntu 20.04
if [[ $(lsb_release -rs) == "20.04" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu20.04_all.deb
    dpkg -i zabbix-release_6.4-1+ubuntu20.04_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    sudo sed -i -e 's/^Server=127.0.0.1$/Server=zabbix.gigo.host/' -e 's/^ServerActive=127.0.0.1$/ServerActive=zabbix.gigo.host/' -e 's/^Hostname=Zabbix server$/Hostname=127.0.0.1/' /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2

# Check Ubuntu 22.04 (64-bit)
elif [[ $(lsb_release -rs) == "22.04" && $(uname -m) == "x86_64" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
    dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    sudo sed -i -e 's/^Server=127.0.0.1$/Server=zabbix.gigo.host/' -e 's/^ServerActive=127.0.0.1$/ServerActive=zabbix.gigo.host/' -e 's/^Hostname=Zabbix server$/Hostname=127.0.0.1/' /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2

# Check Ubuntu 22.04 (ARM64)
elif [[ $(lsb_release -rs) == "22.04" && $(uname -m) == "aarch64" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/ubuntu-arm64/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
    dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    sudo sed -i -e 's/^Server=127.0.0.1$/Server=zabbix.gigo.host/' -e 's/^ServerActive=127.0.0.1$/ServerActive=zabbix.gigo.host/' -e 's/^Hostname=Zabbix server$/Hostname=127.0.0.1/' /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2

# Check Debian 12
elif [[ $(lsb_release -rs) == "12" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian12_all.deb
    dpkg -i zabbix-release_6.4-1+debian12_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    sudo sed -i -e 's/^Server=127.0.0.1$/Server=zabbix.gigo.host/' -e 's/^ServerActive=127.0.0.1$/ServerActive=zabbix.gigo.host/' -e 's/^Hostname=Zabbix server$/Hostname=127.0.0.1/' /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2

# Check Debian 11
elif [[ $(lsb_release -rs) == "11" ]]; then
    wget https://repo.zabbix.com/zabbix/6.4/debian/pool/main/z/zabbix-release/zabbix-release_6.4-1+debian11_all.deb
    dpkg -i zabbix-release_6.4-1+debian11_all.deb
    apt update
    apt install zabbix-agent2 zabbix-agent2-plugin-*
    sudo sed -i -e 's/^Server=127.0.0.1$/Server=zabbix.gigo.host/' -e 's/^ServerActive=127.0.0.1$/ServerActive=zabbix.gigo.host/' -e 's/^Hostname=Zabbix server$/Hostname=127.0.0.1/' /etc/zabbix/zabbix_agent2.conf
    systemctl restart zabbix-agent2
    systemctl enable zabbix-agent2

else
    echo "Unsupported OS or version"
fi
