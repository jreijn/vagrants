#!/bin/bash
mkdir -p /etc/puppet/modules;

if [ ! -d /etc/puppet/modules/mongodb ]; then
  puppet module install puppetlabs-mongodb --version 0.10.0
fi
