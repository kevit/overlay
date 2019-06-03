## Project
Idea of the project comes from http://netwhood.online/2018/09/14/overlay-node/ and related discussions in https://t.me/netstalking_networks and https://t.me/meshnet


## At a Glance

As a result of successful playbook run you will get a linux host with Glider proxy, connected to particular networks (f.e I2P), 
which can be accessible by Wireshark VPN

## Run
ansible-playbook -i production_inventory deploy.yml --extra-vars "vars/all.yml"

## Development

Environment: vagrant up (Linux + libvirt)

please PR

### TODO:

* less hardcode
* submodules


## Similar projects
https://github.com/trailofbits/algo when you need VPN to your mobile phone
https://github.com/StreisandEffect/streisand when you need more wide VPN solution
https://mailinabox.email/ when you need powerful SOHO email server
https://github.com/sovereign/sovereign when you need self-hosted applications
https://github.com/openspace42/aenigma when you need self-hosted XMPP server

