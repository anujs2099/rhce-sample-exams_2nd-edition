#!/bin/bash

mkdir task6; cd task6/

cp ../task2/inventory .
cp ../task2/ansible.cfg .

ansible-doc yum | grep '^= '
ansible-doc yum | grep EXAMPLES -A3000 | less 
ansible all -m yum -a "name=httpd state=latest"

ansible-doc service | grep '^= '
ansible-doc service | grep EXAMPLES -A3000 | less
ansible all -m service -a "name=httpd state=started enabled=true"
ansible all -m shell -a "systemctl is-active httpd; systemctl is-enabled httpd"

ansible ansible2.example.com -m shell -a "uptime"
ansible ansible2.example.com -m shell -a "reboot"
ansible all -m ping
ansible ansible2.example.com -m shell -a "uptime"

ansible all -m shell -a "set"

ansible all -m shell -a "ls -l /etc/motd; cat /etc/motd"
ansible-doc copy | grep '^= '
ansible-doc copy | grep EXAMPLES -A3000 | less
ansible all -m copy -a "content='hello world' dest=/etc/motd"
ansible all -m shell -a "ls -l /etc/motd; cat /etc/motd"

ansible-doc raw | grep '^= '
ansible-doc raw | grep EXAMPLES -A3000 | less
ansible ansible2.example.com -m shell -a "yum remove python3 -y"
ansible ansible2.example.com -m raw -a "yum install python3 -y" -u root --ask-pass
ansible ansible2.example.com -m raw -a "yum install python3 -y" -u root --ask-pass
ansible ansible2.example.com -m raw -a "which python" -u root --ask-pass
ansible ansible2.example.com -m raw -a "alternatives --set python /usr/bin/python3" -u root --ask-pass
ansible ansible2.example.com -m raw -a "which python" -u root --ask-pass

