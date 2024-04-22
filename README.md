# Zabbix Agent Installation and Configuration Script

This script automates the installation and configuration of the Zabbix Agent on Ubuntu and Debian systems.

## Description

Zabbix Agent is a monitoring software that enables remote monitoring and management of system and service statuses.

## Usage

To install and configure the Zabbix Agent, run the following command with root privileges:

bash <(curl -sL https://raw.githubusercontent.com/localroot4/zabbix/main/zabbix-agent2-installer.sh)

During the installation process, you will be prompted to enter the Zabbix Server address for both Server and ServerActive parameters. Additionally, you can specify the hostname as either "127.0.0.1" or the hostname of your server.

## Features

- Downloads and installs the Zabbix Release package to add the Zabbix repository to the system.
- Updates the package list and installs Zabbix Agent and related plugins.
- Replaces the settings related to the Zabbix Server address, ServerActive, and Hostname in the Zabbix Agent configuration file.
- Restarts the Zabbix Agent service and enables it to start automatically upon system boot.

## Author

This script was written by [Atil](https://atil.ir).

