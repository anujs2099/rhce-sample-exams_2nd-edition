#!/bin/bash

mkdir task9
cd  task9/

cp ../task2/inventory .
cp ../task2/ansible.cfg .

vi task9.yaml
ansible-doc yum | egrep '^='
ansible-doc yum | egrep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc copy | egrep '^='
ansible-doc copy | egrep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc service | egrep '^='
ansible-doc service | egrep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc firewalld | egrep '^='
ansible-doc firewalld | egrep EXAMPLES -A3000 | less
vi task9.yaml
ansible-doc uri | egrep '^='
ansible-doc uri | egrep EXAMPLES -A3000 | less
vi task9.yaml
ansible-playbook --syntax-check task9.yaml
ansible-playbook task9.yaml
ansible all -m shell -a "cat /var/www/html/index.html; echo ''; systemctl status httpd; echo ''; systemctl status firewalld; echo ''; firewall-cmd --list-all"
curl http://ansible1.example.com
