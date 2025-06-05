Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "monitoring-vm"

  # Use static IP to avoid DHCP conflicts
  config.vm.network "private_network", ip: "192.168.56.10"

  # Port forwarding to access services from host browser
  config.vm.network "forwarded_port", guest: 9090, host: 9090  # Prometheus
  config.vm.network "forwarded_port", guest: 3000, host: 3000  # Grafana
  config.vm.network "forwarded_port", guest: 9100, host: 9100  # Node Exporter
  config.vm.network "forwarded_port", guest: 9093, host: 9093  # Alertmanager

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

  # Provisioning scripts
  config.vm.provision "shell", path: "scripts/install_prometheus.sh"
  config.vm.provision "shell", path: "scripts/install_node_exporter.sh"
  config.vm.provision "shell", path: "scripts/install_grafana.sh"
  config.vm.provision "shell", path: "scripts/install_alertmanager.sh"
end
