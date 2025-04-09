wget https://github.com/grafana/loki/releases/download/v2.9.0/promtail-linux-amd64.zip
unzip promtail-linux-amd64.zip
sudo mv promtail-linux-amd64 /usr/local/bin/promtail
sudo systemctl daemon-reload
sudo systemctl start promtail
sudo systemctl enable promtail
sudo mkdir -p /etc/promtail
sudo nano /etc/promtail/promtail-config.yaml
