#!/bin/bash

ansible -i inventory all --list-hosts

ansible -i inventory ungrouped --list-hosts

# Default ansible inventory file is /etc/ansible/hosts
ansible all --list-hosts
