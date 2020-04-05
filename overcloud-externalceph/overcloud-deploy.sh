#!/bin/bash

exec openstack overcloud deploy \
--templates /usr/share/openstack-tripleo-heat-templates \
-n /home/stack/templates/network_data.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/disable-telemetry.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible-external.yaml \
-e /home/stack/templates/environments/network-isolation.yaml \
-e /home/stack/templates/environments/network-environment.yaml \
-e /home/stack/templates/environments/net-bond-with-vlans.yaml \
-e /home/stack/templates/ceph-external.yaml \
-e /home/stack/templates/HostnameMap.yaml \
-e /home/stack/templates/ips-from-pool-all.yaml \
-e /home/stack/templates/node-config.yaml \
-e /home/stack/templates/overcloud-images.yaml
