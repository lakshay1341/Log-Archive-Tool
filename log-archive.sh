#!/bin/bash

# Check if the log directory is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <log-directory>"
  exit 1
fi

LOG_DIR=$1
ARCHIVE_DIR="$LOG_DIR/archive"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="logs_archive_$TIMESTAMP.tar.gz"

# Create the archive directory if it doesn't exist
mkdir -p $ARCHIVE_DIR

# Compress the logs
tar -czf $ARCHIVE_DIR/$ARCHIVE_FILE -C $LOG_DIR .

# Log the archive creation
echo "Archived logs to $ARCHIVE_DIR/$ARCHIVE_FILE on $(date)" >> $ARCHIVE_DIR/archive.log

echo "Logs have been archived successfully."
