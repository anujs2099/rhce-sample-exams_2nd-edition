#!/bin/bash

mkdir task9
cd task9/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible all -m yum -a "name=httpd state=absent"; ansible all -m file -a "path=/var/www/html/index.html state=absent"

vi task9.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc copy | grep EXAMPLES -A3000 | less
cp ~/rhce-sample-exams_1st-edition/files/lab3/task9/index.html .
vi task9.yaml
ansible-doc service | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task9.yaml
ansible-playbook --syntax-check task9.yaml
ansible-playbook task9.yaml
apropos ansible
man ansible-playbook | grep -i handler
vi task9.yaml
ansible-playbook task9.yaml
# Notice the handler ran
ansible-playbook task9.yaml
# Notice the handler did not run this time

ansible-doc meta | grep EXAMPLES -A3000 | less

## Note that handlers would not execute:
# if any of the tasks fail (force with force_handlers: True)
# if the task that triggers a handler gives ok (green) status meaning the task doesn't change anything

## Handlers run when all tasks have run
