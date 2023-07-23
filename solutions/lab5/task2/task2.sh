#!/bin/bash

mkdir task2
cd task2/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

cp -pR ~/rhce-sample-exams_1st-edition/files/lab5/task2/* .
vi task2.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc yum | less
ansible-doc yum | grep '^='
ansible-playbook task2.yaml
