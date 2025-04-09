#!/bin/bash

# Download Promtail
wget https://github.com/grafana/loki/releases/download/v2.9.0/promtail-linux-amd64.zip

# Unzip the downloaded file
unzip promtail-linux-amd64.zip

# Move Promtail binary to /usr/local/bin
sudo mv promtail-linux-amd64 /usr/local/bin/promtail

# Create the Promtail configuration directory
sudo mkdir -p /etc/promtail

# Copy promtail-config.yaml from the current directory to /etc/promtail/
sudo cp promtail-config.yaml /etc/promtail/promtail-config.yaml

# Reload systemd daemon
sudo systemctl daemon-reload

# Start Promtail service
sudo systemctl start promtail

# Enable Promtail service to start on boot
sudo systemctl enable promtail

# Inform the user
echo "Promtail binary installed, configuration file set up, and service started successfully. Promtail is now enabled to start at boot."

