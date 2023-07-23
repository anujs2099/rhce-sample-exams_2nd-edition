#!/bin/bash

ansible -i inventory all --list-hosts

ansible -i inventory ungrouped --list-hosts

ansible-navigator inventory -i inventory -m stdout --list

# Default ansible inventory file is /etc/ansible/hosts
ansible all --list-hosts
