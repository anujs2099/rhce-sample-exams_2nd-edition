#!/bin/bash
# Go to docs.ansible.com --> Ansible core --> Ansible Core documentation 
# --> Frequently Asked Questions --> Ctrl + F and search for encrypt --> How do i generate 
# encrypted passwords for the user module 

mkdir task6
cd task6/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task6.yaml
ansible localhost -m debug -a "msg={{ 'mypassword' | password_hash('sha512', 'mysecretsalt') }}"
ansible-doc user | grep EXAMPLES -A3000 | less
ansible-playbook task6.yaml
ssh joseph@ansible2
# Type the password to see if it works
