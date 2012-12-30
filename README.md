vagrant-lamp
============

Base LAMP (box precise64 +  PhpMyAdmin)

Vagrantfile :
*   Change "config.vm.host_name" value with your project uri "example.local"
*   Change "config.vm.network" with a ip project

/manifests/site.pp
*   Remplace all with your own values (hostname similary "config.vm.host_name" in Vagrantfile)

Add ip project in your host file
*	192.168.33.10 example.local

Copy / edit your project in web directory

Run virtual machine with :
	vagrant up