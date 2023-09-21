#!/bin/bash

if [ $# -eq 0 ]; then
    echo "USAGE: $(basename "$0") [service name]"
    exit
fi

service_name="$1"  # Use the provided service name
service_status="unknown"

while true; do
    # Check the service status
    if pgrep "$service_name" &>/dev/null; then
        if [ "$service_status" != "running" ]; then
            echo "$service_name is running."
            service_status="running"
        fi
    else
        if [ "$service_status" != "stopped" ]; then
            echo "$service_name Stopped... Restarting"
            service_status="stopped"

            i=0
            while [ $i -lt 3 ]; do
                systemctl start "$service_name"
                if [ $? -eq 0 ]; then
                    echo "$service_name restarted successfully."
                    service_status="running"
                    break
                fi
                i=$((i + 1))
                sleep 1
            done

            if [ "$service_status" != "running" ]; then
                echo "$service_name couldn't be restarted... Attention" | mail -s "$service_name stopped" mooazsayyed
            fi
        fi
    fi

    sleep 3
done
