#!/bin/bash

mkdir task2
cd task2/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible all -m shell -a "mkdir -p /etc/ansible/facts.d/; touch /etc/ansible/facts.d/myfact.fact; ls -ltr /etc/ansible/facts.d/; echo 'testing: true' >> /etc/ansible/facts.d/myfact.fact"

ansible-doc setup | grep '^='
ansible-doc setup | grep EXAMPLES -A3000 | less
ansible all -m setup -a "filter=ansible_local"

cp ~/rhce-sample-exams_1st-edition/files/lab3/task2/myfacts.fact .
vi task2.yaml
ansible-doc file | grep EXAMPLES -A3000 | less
vi task2.yaml
ansible-doc copy | grep EXAMPLES -A3000 | less
vi task2.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task2.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task2.yaml
ansible-playbook --syntax-check task2.yaml
ansible-playbook task2.yaml

