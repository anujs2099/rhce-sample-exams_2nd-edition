#!/bin/bash

mkdir task2; cd task2/

cp ../task1/inventory .

touch task2.cfg

#Complete the task2.cfg file
ansible --version
cat /etc/ansible/ansible.cfg | grep -v '#'
cat /etc/ansible/ansible.cfg | less
/default
/privi
vi task2.cfg

#Verify if the new configuration file is being used
ansible --version
ansible all -m ping

apropos ansible
man ansible-config | grep FILES -A8
