# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false


  config.vm.define "centbox", primary: true do |conf|
    config.vm.box = "bento/centos-7"
    conf.vm.box_version = "202002.04.0"
    conf.vm.hostname = "CentBox"
    conf.vm.network "private_network", ip: "192.168.96.69"

    conf.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 1024
      v.cpus = 1
    end

    # configure vagrant synced directory
    conf.vm.synced_folder ".",
      "/vagrant",
      mount_options: ["dmode=775", "fmode=664"]
  end
end