#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible all -m yum -a "name=httpd state=absent"; ansible all -m file -a "path=/var/www/html/index.html state=absent"

vi task1.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
vi task1.yaml
ansible-doc service | grep EXAMPLES -A3000 | less
vi task1.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task1.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task1.yaml
ansible-playbook --syntax-check task1.yaml
ansible-playbook task1.yaml
ansible all -m file -a "path=/var/www/html/index.html state=touch"
ansible all -m shell -a "chattr +i /var/www/html/index.html"
ansible-playbook task1.yaml

## Comments
# a rescue or an always cannot be used without a block
# a rescue is only run when tasks within a block fails
# tasks within an always runs always
# when, loop, register, notify statements are applied to all the tasks within a block, a rescue or an always 
