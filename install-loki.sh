#!/bin/bash

# Download Loki
wget https://github.com/grafana/loki/releases/download/v2.9.0/loki-linux-amd64.zip

# Unzip the downloaded file
unzip loki-linux-amd64.zip

# Move Loki binary to /usr/local/bin
sudo mv loki-linux-amd64 /usr/local/bin/loki

# Copy loki.service to /etc/systemd/system/
sudo cp loki.service /etc/systemd/system/loki.service

# Reload systemd daemon
sudo systemctl daemon-reload

# Start Loki service
sudo systemctl start loki

# Enable Loki service to start on boot
sudo systemctl enable loki

# Inform the user
echo "Loki binary installed, service file copied, and service started successfully. Loki is now enabled to start at boot."


