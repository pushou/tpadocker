#!/bin/bash
apt-get install -y curl unzip

mkdir -p /var/lib/consul
mkdir -p /usr/share/consul
mkdir -p /etc/consul/conf.d

curl -OL https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64
unzip 0.5.2_linux_amd64.zip
mv consul /usr/local/bin/consul

curl -OL https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip
unzip 0.5.2_web_ui.zip
mv dist /usr/share/consul/ui
