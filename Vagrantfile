Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "monitoring-vm"
  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "scripts/install_prometheus.sh"
  config.vm.provision "shell", path: "scripts/install_node_exporter.sh"
  config.vm.provision "shell", path: "scripts/install_grafana.sh"
  config.vm.provision "shell", path: "scripts/install_alertmanager.sh"
end
