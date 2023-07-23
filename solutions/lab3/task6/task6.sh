#!/bin/bash

mkdir task6
cd task6/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

# For help on when statements, run the below command but it takes a long time to complete
for i in `ansible-doc -l | awk '{print $1}'`; do ansible-doc $i | grep 'when:'; done

cp ~/rhce-sample-exams_1st-edition/files/lab3/task6/supported_distros .
cat supported_distros
ansible all -m setup | less
vi task6.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-playbook --syntax-check task6.yaml
ansible-playbook task6.yaml
vi supported_distros
ansible-playbook --syntax-check task6.yaml
ansible-playbook task6.yaml

