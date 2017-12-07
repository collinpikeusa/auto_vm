## About ##

Packer template that creates Ubuntu 16.04 image for VirtualBox

## Prerequisites ##

- [VirtualBox](https://www.virtualbox.org)
- [Packer](https://www.packer.io)

## Start ##

On Mac/Ubuntu: `./packer build ubuntu-consul-template.json`. Few minutes later `VM` directory will contain VirtualBox OVF file, which can be imported into VirtualBox as new VM. Login and password for it is `developer` and `developer123`.

## Makefile ##

For linux users: `make all-linux`
Everyone else needs to install VirtualBox and Packer from the site above.
