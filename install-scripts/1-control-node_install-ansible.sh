#!/bin/bash

#subscription-manager repos --list
echo ""
subscription-manager repos --enable rhel-9-for-x86_64-appstream.rpms

echo ""
subscription-manager repos --list | grep ansible-2-for-rhel-8-x86_64-rpms -A3

echo ""
subscription-manager repos --enable ansible-automation-platform-2.2-for-rhel-9-x86_64-rpms

echo ""
yum install ansible-core -y

echo ""
yum install ansible-navigator -y

echo ""
ansible --version
