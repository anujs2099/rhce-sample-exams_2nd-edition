#!/bin/bash

mkdir task8
cd  task8/

cp ../task2/inventory .
cp ../task2/ansible.cfg .

cp ~/rhce-sample-exams_1st-edition/files/vsftpd-err.yaml .

ansible-playbook --syntax-check vsftpd-err.yaml
vi vsftpd-err.yaml
ansible-playbook --syntax-check vsftpd-err.yaml
