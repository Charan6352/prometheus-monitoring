#!/bin/bash

# Download Loki
wget https://github.com/grafana/loki/releases/download/v2.9.0/loki-linux-amd64.zip

# Unzip the downloaded file
unzip loki-linux-amd64.zip

# Move Loki binary to /usr/local/bin
sudo mv loki-linux-amd64 /usr/local/bin/loki

# Copy loki.service to /etc/systemd/system/
sudo cp loki.service /etc/systemd/system/loki.service

# Inform the user
echo "Loki binary installed, and service file copied to /etc/systemd/system/. Please configure the loki.service file as needed."


