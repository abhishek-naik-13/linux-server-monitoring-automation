
#!/bin/bash

# Linux Server Monitoring Project

PROJECT_DIR="$HOME/linux-automation"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/system_monitor.log"

mkdir -p "$LOG_DIR"

{
    echo "=================================="
    echo "Linux Server Monitoring Report"
    date
    echo "Hostname: $(hostname)"
    echo

    echo "CPU Load:"
    uptime
    echo

    echo "RAM Usage:"
    free -h
    echo

    echo "Disk Usage:"
    df -h
    echo

    echo "Top 5 CPU Processes:"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

    echo "=================================="
    echo
} >> "$LOG_FILE"

echo "Monitoring completed successfully!"
echo "Report saved to: $LOG_FILE"
