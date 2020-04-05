#!/bin/bash

exec openstack overcloud deploy \
--templates /usr/share/openstack-tripleo-heat-templates \
-r /home/stack/templates_pre/deployed-server-roles-data.yaml \
-n /home/stack/templates_pre/network_data.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/deployed-server-noop-ctlplane.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/disable-telemetry.yaml \
-e /home/stack/templates_pre/ctlplane.yaml \
-e /home/stack/templates_pre/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-environment.yaml \
-e /home/stack/templates_pre/environments/network-environment.yaml \
-e /home/stack/templates_pre/environments/net-bond-with-vlans.yaml \
-e /home/stack/templates_pre/HostnameMap.yaml \
-e /home/stack/templates_pre/environments/ips-from-pool-all.yaml \
-e /home/stack/templates_pre/node-config.yaml \
-e /home/stack/templates_pre/overcloud-images.yaml \
-e /home/stack/templates_pre/environments/external_route.yaml \
--overcloud-ssh-user stack \
--overcloud-ssh-key ~/.ssh/id_rsa \
--disable-validations
