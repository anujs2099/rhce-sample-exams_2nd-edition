#!/bin/bash

## For troubleshooting issues while running playbooks, you can use upto -vvvv verbosity

mkdir task7
cd task7/

cp ../task2/inventory .
cp ../task2/ansible.cfg .

vi task7.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc service | grep EXAMPLES -A3000 | less
ansible-doc copy | grep EXAMPLES -A3000 | less
vi task7.yaml

ansible-playbook --syntax-check task7.yaml

ansible-playbook -C task7.yaml
ansible-playbook -C task7.yaml -v

ansible-playbook task7.yaml 
ansible ansible2.example.com -m shell -a "cat /var/ftp/pub/README"
ansible ansible2.example.com -m shell -a "rm /var/ftp/pub/README"
ansible-playbook task7.yaml
vi task7.yaml #Change the contents of the file
ansible-playbook task7.yaml
ansible ansible2.example.com -m shell -a "cat /var/ftp/pub/README"
ansible-playbook task7.yaml
vi task7.yaml #Change back to the original contents of the file
ansible-playbook task7.yaml
ansible ansible2.example.com -m shell -a "cat /var/ftp/pub/README"

ansible ansible2.example.com -m yum -a "name=vsftpd state=absent"
ansible ansible2.example.com -m shell -a "cat /var/ftp/pub/README"
ansible ansible2.example.com -m file -a "name=/var/ftp/pub/README state=absent"
ansible ansible2.example.com -m shell -a "cat /var/ftp/pub/README"

ansible-navigator --pp never -m stdout run task7.yaml 
cat task7-artifact-2023-07-24T01\:02\:48.756688+00\:00.json | jq .stdout
