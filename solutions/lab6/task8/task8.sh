#!/bin/bash
# Go to docs.ansible.com

mkdir task8
cd task8/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task8.sh
ansible-doc file | grep EXAMPLES -A3000 | less
ansible-doc reboot | grep EXAMPLES -A3000 | less
ansible-doc debug | grep EXAMPLES -A3000 | less
ansible-playbook task8.yaml

# to test reboot:
# ansible ansible1.example.com -m file -a "path=/etc/systemd/system/default.target state=absent"
