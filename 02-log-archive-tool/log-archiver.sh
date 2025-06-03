#!/bin/bash
echo "log-archive"
dir_name=$1;
delete_after_minutes=$2
if [ -z "$dir_name" ]; then
  echo "Usage: $0 <directory_name>"
  exit 1
fi

if [ ! -d "$dir_name" ]; then
  echo "Directory $dir_name does not exist."
  exit 1
fi
mkdir -p backup

archive_name="backup/$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$archive_name" -C "$dir_name" .

find backup -type f -name "*.tar.gz" -mmin +"$delete_after_minutes" -delete