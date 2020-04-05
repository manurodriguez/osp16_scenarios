== Basic Overcloud with blockstorage

These templeates allow to deploy an environment with the following components:

* customized roles to include external network on computes
* DVR support
* Bonding with 2 nics, external non-vlan network attached to the br-ex bridge
* local storage for the blockstorage node
* disable telemetry components
* low memory settings

Note: Include your username and password on the overcloud-images.yaml template to use public registry.
