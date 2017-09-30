Vagrant.require_version ">= 1.9.1"

module OS
	def OS.windows?
		(/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
	end

	def OS.mac?
		(/darwin/ =~ RUBY_PLATFORM) != nil
	end

	def OS.unix?
		!OS.windows?
	end

	def OS.linux?
		OS.unix? and not OS.mac?
	end
end

Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.box_check_update = true
	config.vm.hostname = "docker-dev"
	config.vm.post_up_message = "Vagrant box up - connect with 'vagrant ssh'"
	config.vm.synced_folder ".", "/vagrant", type: "virtualbox", disabled: true
	
	if (defined?(OS.windows)).nil?
		puts "Windows system provision"
		config.vm.provision "shell", path: "scripts/provision.sh"
	else
		puts "Linux system provision"
		config.vm.provision "ansible", playbook: "ansible/play.yml"
	end

	config.vm.provider "virtualbox" do |v|
		v.name = "docker-dev"
  		v.gui = false
		v.memory = 1024
		v.cpus = 1
	end
end