#!/bin/bash

# Set the threshold percentage
THRESHOLD=95

# Set the email address for alerts
EMAIL="bhatiagit@gmail.com"

# Check the disk usage
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Compare usage with the threshold
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Disk space is critically low: ${USAGE}% used." | mail -s "Disk Space Alert" $EMAIL
fi
