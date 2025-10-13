#!/data/data/com.termux/files/usr/bin/bash
echo "Updating CA certs..."
curl -s -o $PREFIX/etc/tls/cacert.pem https://curl.se/ca/cacert.pem
chmod 644 $PREFIX/etc/tls/cacert.pem
echo "CA bundle updated on $(date)" >> ~/ca-update.log

