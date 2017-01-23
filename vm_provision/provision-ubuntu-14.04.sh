#!/usr/bin/env bash

# Intended for Ubuntu 14.04 (Trusty)

# Update Ubuntu
apt-get update

# Create the directories /sync and /tools under directory /usr
echo "----- Provision: Creating directories for Comp Methods…”
sudo su
cd /
cd usr/
mkdir sync
cd sync
mkdir tools

# Create user accounts ‘setup’ and ‘self’
echo "----- Provision: Creating user accounts for Comp Methods…”
cd /
adduser --disabled-password --gecos "" setup
echo "setup:JHUEcon" | chpasswd
adduser --disabled-password --gecos "" self
echo "self:JHUEcon" | chpasswd
exit