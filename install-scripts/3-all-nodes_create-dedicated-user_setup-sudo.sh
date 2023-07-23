#!/bin/bash

useradd ansible
echo password | passwd --stdin ansible

echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
