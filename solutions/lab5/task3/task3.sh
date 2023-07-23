#!/bin/bash

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task3.yaml
cat /etc/ansible/ansible.cfg | grep -i fact
ansible-doc selinux | grep EXAMPLES -A3000 | less
ansible --version
ansible-galaxy collection install ansible.posix
ansible-galaxy collection list
ansible-playbook task3.yaml
sestatus 
ls -ltr ~/.ansible/collections/
tree ~/.ansible/collections/ansible_collections/ansible/posix
ansible-doc ansible.posix.selinux

mkdir collections/
vi collections/requirements.yaml

ansible-galaxy collection install -h
ansible-galaxy collection install -r collections/requirements.yaml -p collections/
ansible-galaxy collection list
ls -ltr collections/
tree collections/ansible_collections/

ansible-navigator --pp never
:collections

vi ansible.cfg 
ansible-galaxy collection list
ansible-galaxy collection install nginxinc.nginx_core
ansible-galaxy collection list
ls -ltr collections/
ls -ltr collections/ansible_collections/

rm -rf collections/ansible_collections/*
ansible-galaxy collection list

