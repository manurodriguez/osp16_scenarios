### Overcloud with external ceph

These templeates allow to deploy an environment with the following components:

* OVN network with geneve, vlan, flat network types
* Bonding with 2 nics, external non-vlan network attached to the br-ex bridge on the controller node
* local storage for the blockstorage node
* disable telemetry components
* predictable IPs and hostnames
* integration of external ceph

Note: Include your username and password on the overcloud-images.yaml template to use public registry.
