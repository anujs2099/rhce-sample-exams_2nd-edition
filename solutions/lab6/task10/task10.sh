#!/bin/bash
# Go to docs.ansible.com

mkdir task10
cd task10/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

cp ~/rhce-sample-exams_1st-edition/files/lab6/task10/example.txt .
vi task10.yaml
ansible-doc set_fact | grep EXAMPLES -A3000 | less
ansible-doc setup | grep EXAMPLES -A3000 | less
ansible-playbook task10.yaml

