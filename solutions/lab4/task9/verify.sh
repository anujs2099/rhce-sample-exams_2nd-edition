#!/bin/bash

vi verify.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc shell | grep EXAMPLES -A3000 | less
ansible-playbook verify.yaml
ansible all -m shell -a "ls -ltr /home/ansible/"
