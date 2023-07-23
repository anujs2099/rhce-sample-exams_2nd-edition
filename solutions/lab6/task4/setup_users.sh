#!/bin/bash

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task4.yaml
ansible-doc group | grep EXAMPLES -A3000 | less
ansible-doc user | grep EXAMPLES -A3000 | less
ansible-doc authorized_key | grep EXAMPLES -A3000 | less
cp -pR ~/rhce-sample-exams_1st-edition/files/lab6/task4/* .
tree
ansible-doc copy | grep EXAMPLES -A3000 | less
ansible-doc lineinfile | grep EXAMPLES -A3000 | less
ansible-doc service | grep EXAMPLES -A3000 | less
ansible-playbook task4.yaml
