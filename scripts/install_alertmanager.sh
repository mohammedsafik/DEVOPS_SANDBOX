#!/bin/bash
useradd --no-create-home --shell /bin/false alertmanager
wget https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz
tar xvf alertmanager*.tar.gz
sudo mv alertmanager*/alertmanager /usr/local/bin/
