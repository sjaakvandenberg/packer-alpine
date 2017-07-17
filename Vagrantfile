# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define :alpine do |alpine|

    alpine.vm.box = "vbox/alpine-v.3.4.6.box"

    #alpine.ssh.username = "vagrant"
    #alpine.ssh.password = "vagrant"

    # NOTE:
    # 	there are *no* guest additions installed
    # 	for alpine linux - the guest additions
    # 	installer fails. once workarounds are
    # 	identified the vbga will be added
    # 	to the base box.
    #
    # since there are no vbga. if the vagrant-alpine plugin
    # is installed it can at least configure the system to
    # enable shared folders.
    #
    alpine.vm.synced_folder ".", "/vagrant", disabled: true
    #
    # after `vagrant plugin install vagrant-alpine`
    # comment the disabled synced_folder line above and
    # uncomment the following two lines
    #
    # alpine.vm.network "private_network", ip: "172.28.128.250"
    # alpine.vm.synced_folder ".", "/vagrant", type: "nfs"

    alpine.vm.network :private_network, ip: "10.0.0.10"
    alpine.vm.network :forwarded_port, guest: 80, host: 8080
    alpine.vm.provider :virtualbox do |vb|
      vb.name = 'Alpine 3.4'
      vb.cpus = 1
      vb.memory = 512
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.gui = false
    end

  end

  config.vbguest.auto_update = false

  # config.vm.provision "shell", path: "provision.sh"

end
