#!/bin/bash

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

cp ~/rhce-sample-exams_1st-edition/files/lab3/task4/my_users .
cat my_users
vi task4.yaml
ansible-doc user | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-playbook --syntax-check task4.yaml
ansible-playbook task4.yaml

