#!/bin/bash

mkdir task10
cd task10/

cp ../../lab1/task10/inventory .
cp ../../lab1/task10/ansible.cfg .

cp ~/rhce-sample-exams_1st-edition/files/lab5/task10/vsftpd.yml .
ansible-playbook --check vsftpd.yaml
