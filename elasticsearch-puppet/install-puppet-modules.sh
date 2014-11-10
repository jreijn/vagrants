#!/bin/bash
mkdir -p /etc/puppet/modules;
if [ ! -d /etc/puppet/modules/file_concat ]; then
  puppet module install ispavailability/file_concat
fi
if [ ! -d /etc/puppet/modules/apt ]; then
  puppet module install puppetlabs-apt
fi
if [ ! -d /etc/puppet/modules/elasticsearch ]; then
  puppet module install elasticsearch-elasticsearch
fi
