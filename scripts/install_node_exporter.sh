#!/bin/bash
useradd --no-create-home --shell /bin/false node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.0/node_exporter-1.8.0.linux-amd64.tar.gz
tar xvf node_exporter*.tar.gz
sudo mv node_exporter*/node_exporter /usr/local/bin/
