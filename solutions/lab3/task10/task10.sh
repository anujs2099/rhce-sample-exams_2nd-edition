#!/bin/bash

mkdir task10
cd task10/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible all -m yum -a "name=httpd state=absent"; ansible all -m file -a "path=/var/www/html/index.html state=absent"

vi task10.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc service | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible all -m setup | less
/distribution
sed -i 's/==/!=/g' task10.yaml
cat task10.yaml
ansible-playbook task10.yaml 
sed -i 's/!=/==/g' task10.yaml
cat task10.yaml
ansible-playbook --syntax-check task10.yaml
ansible-playbook task10.yaml

## Comments
# when, loop, register, notify statements are applied to all the tasks within a block
