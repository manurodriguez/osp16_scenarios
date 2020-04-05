#!/bin/bash

THT=/usr/share/openstack-tripleo-heat-templates
CNF=~/templates

openstack overcloud deploy --templates \
-r $CNF/roles_data.yaml \
-n $CNF/network_data.yaml \
-e $THT/environments/network-environment.yaml \
-e $THT/environments/services/neutron-ovn-dvr-ha.yaml \
-e $THT/environments/disable-telemetry.yaml \
-e $THT/environments/low-memory-usage.yaml \
-e $CNF/environments/network-isolation.yaml \
-e $CNF/environments/net-bond-with-vlans.yaml \
-e $CNF/environments/network-environment.yaml \
-e $CNF/overcloud-images.yaml \
-e $CNF/node-config.yaml
