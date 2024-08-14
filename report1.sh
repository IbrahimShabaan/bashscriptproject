#! /usr/bin/bash
# Define the output file path
OUTPUT_FILE="/home/report.txt"

# Get current date and time
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Collect system metrics
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/., *\([0-9.]\)%* id.*/\1/" | awk '{print 100 - $1}')
MEMORY_TOTAL=$(free -h | grep Mem: | awk '{print $2}')
MEMORY_USED=$(free -h | grep Mem: | awk '{print $3}')
MEMORY_FREE=$(free -h | grep Mem: | awk '{print $4}')
DISK_TOTAL=$(df -h / | grep / | awk '{print $2}')
DISK_USED=$(df -h / | grep / | awk '{print $3}')
DISK_FREE=$(df -h / | grep / | awk '{print $4}')


# Create the summary report
echo "System Metrics Report" > "$OUTPUT_FILE"
echo "Date and Time: $DATE_TIME" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "CPU Usage: $CPU_USAGE%" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Memory Usage:" >> "$OUTPUT_FILE"
echo "  Total: $MEMORY_TOTAL" >> "$OUTPUT_FILE"
echo "  Used: $MEMORY_USED" >> "$OUTPUT_FILE"
echo "  Free: $MEMORY_FREE" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Disk Usage:" >> "$OUTPUT_FILE"
echo "  Total: $DISK_TOTAL" >> "$OUTPUT_FILE"
echo "  Used: $DISK_USED" >> "$OUTPUT_FILE"
echo "  Free: $DISK_FREE" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Report saved to $OUTPUT_FILE"




