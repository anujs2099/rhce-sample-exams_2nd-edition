#!/bin/bash

mkdir task9
cd task9/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi ansible.cfg
sudo ls -ltr /var/log/
sudo ansible all -m setup
sudo ls -ltr /var/log/
sudo cat /var/log/ansible.log | less

mkdir log
cat /etc/ansible/ansible.cfg | grep -i log
vi ansible.cfg 
ansible all -m setup 
cat ./log/ansible.log | less

