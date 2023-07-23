#!/bin/bash

mkdir task5
cd task5/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

sudo yum install rhel-system-roles -y
rpm -ql rhel-system-roles
ls -ltr /usr/share/ansible/roles/
ls -ltr /usr/share/doc/rhel-system-roles/
# Exploring rhel selinux system role
ls -ltr /usr/share/doc/rhel-system-roles/selinux/
vi /usr/share/doc/rhel-system-roles/selinux/example-selinux-playbook.yml
vi /usr/share/ansible/roles/rhel-system-roles.selinux/tasks/main.yml
# Exploring RHEL timesync system role
ls -ltr /usr/share/ansible/roles/rhel-system-roles.timesync/
vi /usr/share/doc/rhel-system-roles/timesync/example-single-pool-playbook.yml
vi /usr/share/doc/rhel-system-roles/timesync/example-multiple-ntp-servers-playbook.yml
vi /usr/share/ansible/roles/rhel-system-roles.timesync/tasks/main.yml

ls -ltr /usr/share/ansible/roles/rhel-system-roles.timesync/
cat /usr/share/doc/rhel-system-roles/timesync/example-multiple-ntp-servers-playbook.yml 
ansible-doc timezone | grep EXAMPLES -A3000 | less
vi task5.yaml 
ansible-playbook task5.yaml

