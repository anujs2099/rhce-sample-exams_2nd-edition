#!/bin/bash

mkdir task5
cd task5/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi vars/users
vi task5.yaml
cp -pR ~/rhce-sample-exams_1st-edition/files/lab6/task5/* .
tree
ansible-doc group | grep EXAMPLES -A3000 | less
ansible-doc user | grep EXAMPLES -A3000 | less
ansible-doc authorized_key | grep EXAMPLES -A3000 | less
ansible-doc template | grep EXAMPLES -A3000 | less
ansible-doc lineinfile | grep EXAMPLES -A3000 | less
ansible-doc service | grep EXAMPLES -A3000 | less
ansible-playbook task5.yaml
ansible ansible2.example.com -m shell -a "cat /etc/sudoers.d/admin-access"
