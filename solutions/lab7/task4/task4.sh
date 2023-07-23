#!/bin/bash
# Go to docs.ansible.com

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

mkdir host_vars
vi host_vars/ansible2.example.com
cat /usr/share/doc/rhel-system-roles/network/example-bond_simple-playbook.yml 
cat /usr/share/doc/rhel-system-roles/network/example-eth_simple_auto-playbook.yml 
cat /usr/share/doc/rhel-system-roles/network/example-eth_with_vlan-playbook.yml 
vi task4.yaml 
ansible-playbook task4.yaml
ansible ansible2.example.com -m shell -a "nmcli c show"
ansible ansible2.example.com -m shell -a "nmcli c show ens224"
