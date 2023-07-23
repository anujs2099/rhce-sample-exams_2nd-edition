#!/bin/bash

apropos ansible
ansible-doc -h
ansible-doc -l | less
ansible-doc ping | grep EXAMPLES -A3000

ansible-doc copy | less
ansible-doc copy | grep '^= '

ansible-doc firewalld | less
ansible --version
ansible-doc | less 
/firewall
