#!/bin/bash

# 1. Clean old log files (older than 7 days)
echo "🔹 Cleaning old log files..."
find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;
echo "✅ Deleted log files older than 7 days!"

# 2. Backup important files
echo "🔹 Taking a backup of important files..."
backup_dir="/backup/$(date +%Y-%m-%d)"
mkdir -p "$backup_dir"
cp -r /path/to/important/files/* "$backup_dir"
echo "✅ Backup saved in: $backup_dir"

# 3. Update the system
echo "🔹 Updating the system..."
sudo apt update && sudo apt upgrade -y
echo "✅ System updated successfully!"

# Script completion
echo "🎉 All tasks completed successfully!"