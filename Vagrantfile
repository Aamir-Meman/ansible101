# -*- mode: ruby -*-
# vi: set ft=ruby :("2") do |config|

Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/centos-7.2"

  # Server One Configuration
  config.vm.define :serverOne do |s1|
    # s1.vm.network "forwarded_port", guest: 8080, host: 7081
    s1.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      # vb.gui = true
      vb.name = "nisumserver001"
      # Customize the amount of memory on the VM:
      vb.memory = "1024"
    end
    s1.vm.network "private_network", ip: "172.28.128.3"
    s1.vm.provision "file", source: "./keys/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
    s1.vm.provision "shell", inline: <<-SHELL
      # Update your CentOS system
      # yum install epel-release
      whoami
      # Get the public IP of your app Server
      echo -e "Please take a note of public IP mentioned below."
      hostname -I | awk -F' ' '{print $2}'
      su - vagrant
      cat /home/vagrant/.ssh/id_rsa.pub >>  /home/vagrant/.ssh/authorized_keys
    SHELL
  end

  # Server One Configuration
  config.vm.define :serverTwo do |s2|
    # s2.vm.network "forwarded_port", guest: 8080, host: 7082
    s2.vm.network "private_network", ip: "172.28.128.4"
    s2.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      # vb.gui = true
      vb.name = "nisumserver002"
      # Customize the amount of memory on the VM:
      vb.memory = "1024"
    end
    s2.vm.network "private_network", type: "dhcp"
    s2.vm.provision "file", source: "./keys/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
    s2.vm.provision "shell", inline: <<-SHELL
      # yum install epel-release
      # Get the public IP of your app Server
      echo -e "Please take a note of public IP mentioned below."
      hostname -I | awk -F' ' '{print $2}'
      su - vagrant
      cat /home/vagrant/.ssh/id_rsa.pub >>  /home/vagrant/.ssh/authorized_keys
    SHELL
  end

  # Server One Configuration
  config.vm.define :serverThree do |s3|
    # s3.vm.network "forwarded_port", guest: 8080, host: 7083
    s3.vm.network "private_network", ip: "172.28.128.5"
    s3.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      # vb.gui = true
      vb.name = "nisumserver003"
      # Customize the amount of memory on the VM:
      vb.memory = "1024"
    end
    s3.vm.provision "file", source: "./keys/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
    s3.vm.provision "shell", inline: <<-SHELL
      # yum install epel-release
      # Get the public IP of your app Server
      echo -e "Please take a note of public IP mentioned below."
      hostname -I | awk -F' ' '{print $2}'
      su - vagrant
      cat /home/vagrant/.ssh/id_rsa.pub >>  /home/vagrant/.ssh/authorized_keys
    SHELL
  end
end
