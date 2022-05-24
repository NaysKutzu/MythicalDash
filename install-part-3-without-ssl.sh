#!/bin/sh
cd /etc/apache2/sites-available
# Remove the default configuration
a2dissite 000-default.conf
rm 000-default.conf
# Get the new configuration
wget https://raw.githubusercontent.com/zymsbgt/shadowsdash-installer/main/shadowsdash-nossl.conf
# Open up the file with Nano for user to edit the <domain> field
nano shadowsdash-nossl.conf