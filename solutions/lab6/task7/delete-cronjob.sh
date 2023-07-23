#!/bin/bash
# Go to docs.ansible.com

mkdir task7
cd task7/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi delete-cronjob.sh
ansible-doc cron | grep EXAMPLES -A3000 | less
ansible-doc file | grep EXAMPLES -A3000 | less
ansible-playbook delete-cronjob.sh
