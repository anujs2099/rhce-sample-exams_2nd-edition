#!/bin/bash
# Go to docs.ansible.com

mkdir task9
cd task9/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi setup-storage.yaml 
mkdir vars
vi vars/all_vars
ansible ansible1.example.com -m shell -a "fdisk -l"
ansible ansible1.example.com -m shell -a "pvs"
ansible ansible1.example.com -m shell -a "vgs"
ansible ansible1.example.com -m shell -a "lvs"
vi setup-storage.yaml 
ansible-doc parted | grep EXAMPLES -A3000 | less
ansible-doc lvg | grep EXAMPLES -A3000 | less
ansible-doc lvol | grep EXAMPLES -A3000 | less
ansible-doc filesystem | grep EXAMPLES -A3000 | less
ansible-doc mount | grep EXAMPLES -A3000 | less
ansible-playbook setup-storage.yaml 
ansible ansible1.example.com -m shell -a "pvs"
ansible ansible1.example.com -m shell -a "vgs"
ansible ansible1.example.com -m shell -a "lvs"
ansible ansible1.example.com -m shell -a "df -h | egrep 'vgweb'"
ansible ansible1.example.com -m shell -a "cat /etc/fstab | egrep 'vgweb'"

