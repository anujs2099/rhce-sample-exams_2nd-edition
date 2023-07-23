#!/bin/bash

mkdir task8
cd task8/

cp -pR ~/rhce-sample-exams_1st-edition/files/lab2/task8/vars .
cp ../task8/inventory .
cp ../task8/ansible.cfg .
tree

vi multi-list.yaml
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
vi multi-list.yaml
ansible-playbook --syntax-check multi-list.yaml
ansible-playbook multi-list.yaml

vi multi-dictionary.yaml
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
vi multi-dictionary.yaml
ansible-playbook --syntax-check multi-dictionary.yaml
ansible-playbook multi-dictionary.yaml
