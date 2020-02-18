# centbox

## Instructions
* download and install [VirtualBox](https://www.virtualbox.org/ "Oracle VirtualBox")
* download and install [Vagrant](https://www.vagrantup.com/ "HashiCorp Vagrant")
* clone this repo and cd to its directory
* run `vagrant up` and wait until complete
* run `vagrant ssh` to ssh into the box

### Possible issues
* probably you'll have to disable Hyper-V on a Windows machine ([see why](https://www.virtualbox.org/ticket/18387))
* as 64bit CentOS used make sure your computer complies with duDE's answer in [this thread](https://superuser.com/questions/866962/why-does-virtualbox-only-have-32-bit-option-no-64-bit-option-on-windows-7)

## Basic info
With this configuration you download a pre-configured virtual machine with CentOS 7 in it. It has some developer tools installed. All passwords inside the OS by convention are `vagrant`. The host directory (the one from which vagrant is started) is mounted in guest OS to `/vagrant` directory and can be used as shared directory between host and guest OSes.

The virtual machine IP is 192.168.96.69

The box is meant for development / testing purpose only.

The box is limited with only 1024M of RAM and 1 CPU. In some cases you'll want to increase them. Open `Vagrantfile`, and edit there `v.memory` and `v.cpu` values and reload the box (`vagrant reload`)

The shared folder (`/vagrant` inside centbox) is mounted as vboxfs file system. `chmod` and `chown` won't have any effect inside this directory. So if you want for example to make a file executable move / copy it to somewhere else inside the virtual machine and make it executable (for example to `/home/vagrant` directory).

### Included tools
* Apache server 2.4
* direnv
* docker
* git
* MariaDB 10.4 (started as a docker container)
* MySQL client
* PHP 7.3
* tmux
* vim

### Note on MySQL server
root password is `Secret123#`, the exposed port is 33061

Whenever you want to connect to MySQL use host IP for host, no `localhost`, use `127.0.0.1` instead. I.e. `mysql -P33061 -uroot -pSecret123# -h127.0.0.1`, not `mysql -P33061 -uroot -pSecret123# -hlocalhost`

## Basic commands
* `vagrant up` - start the box
* `vagrant ssh` - ssh into the box
* `vagrant halt` - stop the box
* `vagrant destroy` - delete the box
* `vagrant reload` - reload the box
