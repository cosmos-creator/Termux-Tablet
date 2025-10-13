#!/data/data/com.termux/files/usr/bin/bash
echo "Updating CA certs..."
curl -s -o ~/AdGuardHome/cacert.pem https://curl.se/ca/cacert.pem
chmod 644 ~/AdGuardHome/cacert.pem
echo "CA bundle updated on $(date)" >> ~/ca-update.log

