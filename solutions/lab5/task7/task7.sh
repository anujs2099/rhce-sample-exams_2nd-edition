#!/bin/bash

mkdir task7
cd task7/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

ansible-inventory --list

vi task7.yaml

vi install-and-setup.yaml
ansible-playbook task7.yaml
