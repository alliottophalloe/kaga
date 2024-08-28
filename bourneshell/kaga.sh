#!/bin/bash

source ./config.sh
source ./utils.sh

function reverse_ip_lookup {
    ip=$1
    domains=$(curl -s "https://api.hackertarget.com/reverseiplookup/?q=$ip")
    
    if [ ! -z "$domains" ]; then
        echo "$domains" >> $RESULT_FILE
        log_activity "Reverse IP lookup berhasil untuk $ip"
    else
        log_activity "Gagal melakukan Reverse IP lookup untuk $ip"
    fi
}

# Contoh penggunaan
TARGET_IP="8.8.8.8"
reverse_ip_lookup $TARGET_IP
