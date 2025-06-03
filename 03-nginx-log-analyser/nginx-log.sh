#!/bin/bash

echo "nginx-log"

if [ ! -f "access.log" ]; then
    echo "Downloading access.log file..."
    curl -o access.log https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log
    echo "Download complete."
    echo ""
fi
logfile="access.log"

echo -e "\nTop 5 IP addresses:"
awk '{print $1}' "$logfile" | sort | uniq -c| sort -nr| head -n 5 |awk '{print $2,"-" , $1}'

echo -e "\nTop 5 requested paths:"
awk '{print $7}' "$logfile" | sort |uniq -c| sort -nr| head -n 5 | awk '{print $2,"-" , $1}'

echo -e "\nTop 5 response status codes:"
awk '{print $9}' "$logfile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2,"-" , $1}'

echo -e "\nTop 5 user agents:"
awk -F\" '{print $6}' "$logfile" | sort | uniq -c | sort -nr | head -5 | awk '{print $2,"-" , $1}'