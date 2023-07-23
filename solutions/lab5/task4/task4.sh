#!/bin/bash

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

cp -pR ~/rhce-sample-exams_1st-edition/files/lab5/task4/* .
# Create the role 
ansible-galaxy role init -h
mkdir roles
ansible-galaxy role init --init-path roles/ vhost
mv roles/task4-role/templates/vhost.conf.j2 roles/vhost/templates/
rm -rf roles/task4-role/
tree
ls -ltr roles/vhost/
cd roles/vhost/
ls -ltr
rm -rf defaults/
rm -rf vars/
rm -rf tests/
rm -rf files/
vi tasks/main.yaml
cd ../../
ansible all -m setup | less
/hostname
/fqdn
cd roles/vhost/
vi templates/vhost.conf.j2
cat templates/vhost.conf.j2 | grep -i test
# Create the playbook
cd ../../
vi task4.yaml
# Run the playbook
ansible-playbook task4.yaml

