log_activity() {
    message=$1
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] $message" >> $LOG_FILE
}
