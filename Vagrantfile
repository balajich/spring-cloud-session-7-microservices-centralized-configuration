# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
  
  config.vm.define "ccdockerserver" do |ccdockerserver|
    ccdockerserver.vm.box = "centos/7"
    ccdockerserver.vm.hostname = "ccdockerserver.eduami.org"
    ccdockerserver.vm.network "private_network", ip: "192.168.50.26"
    ccdockerserver.vm.network "forwarded_port", guest: 8080, host: 8080
    ccdockerserver.vm.network "forwarded_port", guest: 8888, host: 8888
    ccdockerserver.vm.network "forwarded_port", guest: 8761, host: 8761
    ccdockerserver.vm.network "forwarded_port", guest: 5672, host: 5672
    ccdockerserver.vm.network "forwarded_port", guest: 15672, host: 15672
    ccdockerserver.vm.network "forwarded_port", guest: 9411, host: 9411
    ccdockerserver.vm.provision "shell", path: "startup-ccdockerserver.sh"
    ccdockerserver.vm.provider "virtualbox" do |vb|
      vb.name = "ccdockerserver"
      vb.memory = 4024
      vb.cpus = 1
    end
  end
end
