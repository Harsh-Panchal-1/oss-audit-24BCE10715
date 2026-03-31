#!/bin/bash
# Script 1: System Identity Report
# Author: Harsh Panchal
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Harsh Panchal"
SOFTWARE_CHOICE="Git"

# --- System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Extracting a clean Distro name using grep and cut
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)

# --- Display
echo "========================================="
echo "        Open Source Audit                "
echo "        Name: $STUDENT_NAME              "
echo "        Software: $SOFTWARE_CHOICE       "
echo "========================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Date/Time    : $CURRENT_TIME"
echo "Uptime       : $UPTIME"
echo "-----------------------------------------"
echo "License Note: The Linux OS running this  "
echo "script is protected by the GPL v2 license,"
echo "guaranteeing the 4 essential freedoms."
echo "========================================="
