# centbox

## Instructions
* download and install [VirtualBox](https://www.virtualbox.org/ "Oracle VirtualBox")
* download and install [Vagrant](https://www.vagrantup.com/ "HashiCorp Vagrant")
* clone this repo and cd to its directory
* run `vagrant up` and wait until complete
* run `vagrant ssh` to ssh into the running vm

### Possible issues
* probably you'll have to disable Hyper-V on a Windows machine ([see why](https://www.virtualbox.org/ticket/18387))
* as 64bit CentOS is used make sure your computer complies with duDE's answer in [this thread](https://superuser.com/questions/866962/why-does-virtualbox-only-have-32-bit-option-no-64-bit-option-on-windows-7)

## Basic info
With this configuration you download a pre-configured virtual machine with CentOS 7 in it. It has some developer tools installed. All passwords inside the OS by convention are `vagrant` (if not stated something else as with mariadb accounts, see below). The host directory (the one from which vagrant is started) is mounted in guest OS to `/vagrant` directory and can be used as shared directory between host and guest OSes.  
The virtual machine IP is 192.168.96.69  
The box is meant for development / testing purpose only.  
The shared folder (`/vagrant` inside centbox) is mounted as vboxfs file system. `chmod` and `chown` won't have any effect inside this directory. So if you want for example to make a file executable move / copy it to somewhere else inside the virtual machine and make it executable (for example to `/home/vagrant` directory).

### Default configuration
* Memory: 1024M
* CPUs: 1
* IP: 192.168.96.69

### Change configuration
Copy `vagrant.demo.json` to `vagrant.json` and change values to desired ones (or erase some of them to leave defaults).

### Included tools
* Apache server 2.4
* direnv
* docker
* git
* htop
* MariaDB 10.4 (started as a docker container)
* MySQL client
* PHP 7.3
* tmux
* vim

### Note on MySQL server
The exposed port is 33061.  
Accounts (in `user`:`password` format, all granted all privileges):
* `root`:`vagrant`
* `vagrant`:`vagrant`
* `kurdupel`:`Secret123#`

Whenever you want to connect to MySQL use host IP for host, no `localhost`, use `127.0.0.1` instead. I.e. `mysql -P33061 -uroot -pvagrant -h127.0.0.1`, not `mysql -P33061 -uroot -pSecret123# -hlocalhost`

## Basic commands
* `vagrant up` - start vm
* `vagrant ssh` - ssh into running vm
* `vagrant halt` - stop vm
* `vagrant destroy` - delete vm
* `vagrant reload` - reload vm
* `vagrant -h` - more reading
