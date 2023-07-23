#!/bin/bash

#sudo subscription-manager repos --list
echo ""
subscription-manager repos --enable ansible-2-for-rhel-8-x86_64-rpms

echo ""
subscription-manager repos --list | grep ansible-2-for-rhel-8-x86_64-rpms -A3

echo ""
yum install ansible -y

echo ""
ansible --version
