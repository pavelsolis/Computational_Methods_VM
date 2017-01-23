#!/usr/bin/env bash

# Create the directory /usr/sync/tools
echo "----- Provision: Creating directory for Comp Methods…”
mkdir -p /usr/sync/tools

# Create user accounts ‘setup’ and ‘self’
echo "----- Provision: Creating user accounts for Comp Methods…”
adduser --disabled-password --gecos "" setup
echo "setup:JHUEcon" | chpasswd
adduser --disabled-password --gecos "" self
echo "self:JHUEcon" | chpasswd
