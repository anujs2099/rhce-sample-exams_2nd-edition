#!/bin/bash

mkdir task5; cd task5/

cp ../task2/inventory .
cp ../task2/ansible.cfg .

ansible-doc user | less
ansible-doc user | grep EXAMPLES -A3000 | less
ansible all -m user -a "name=lisa"

ansible all -m user -a "name=lisa"

ansible all -m shell -a "id lisa"

ansible all -m user -a "name=lisa state=absent"

ansible all -m shell -a "id lisa"
