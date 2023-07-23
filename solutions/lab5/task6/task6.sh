#!/bin/bash

mkdir task6
cd task6/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

# Setup your managed vms with 1 additional network card
ansible all -m ping
ansible all -m shell -a "ip addr"

sudo yum install rhel-system-roles -y
rpm -ql rhel-system-roles
ls -ltr /usr/share/ansible/roles/
ls -ltr /usr/share/doc/rhel-system-roles/
ls -ltr /usr/share/doc/rhel-system-roles/network/
cat /usr/share/doc/rhel-system-roles/network/example-eth_simple_auto-playbook.yml
ansible all -m shell -a "ip addr"
vi task6.yaml 
ansible-playbook task6.yaml
ansible all -m shell -a "ip addr"
ansible all -m shell -a "nmcli con show"

