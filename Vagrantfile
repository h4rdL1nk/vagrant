Vagrant.require_version ">= 1.9.1"

Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.box_check_update = true
	config.vm.hostname = "docker-dev"
	config.vm.post_up_message = "Vagrant box up - connect with 'vagrant ssh'"
	config.vm.synced_folder "C:\\Users\\luismiguel.saez\\github", "/data/github/", disabled: false
	config.vm.provision "shell", path: "scripts/provision.sh"

	config.vm.provider "virtualbox" do |v|
		v.name = "docker-dev"
  		v.gui = true
		v.memory = 1024
		v.cpus = 1
	end
end