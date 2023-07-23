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

ansible-doc -t role -l | less

ansible-doc -t filter -l | less

ansible-doc -t filter -l | less
/password
ansible-doc -t filter password_hash | less

ansible-doc -t keyword -l | less
ansible-doc -t keyword delegate_to | less
