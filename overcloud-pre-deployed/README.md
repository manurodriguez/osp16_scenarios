### Overcloud on pre-deployed nodes

These templeates allow to deploy an environment with the following components:

* OVN network with geneve, vlan, flat network types
* Bonding with 2 nics, external non-vlan network attached to the br-ex bridge on the controller node
* disable telemetry components
* predictable IPs and hostnames
* deploys openstack on pre-installed nodes with RHEL8

Note: Include your username and password on the overcloud-images.yaml template to use public registry.

Warning: Initial preparation of nodes are required like creating a user, setting ssh keys and 
installing the following packages:

** Compute **
```
certmonger
iptables
iptables-services
net-snmp
nftables
openssh-server
```

** Controller **
```
certmonger
fence-agents-all
iptables
iptables-services
net-snmp
nftables
openssh-server
pacemaker
pacemaker-libs
pcs
```
