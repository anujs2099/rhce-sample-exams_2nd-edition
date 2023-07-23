#!/bin/bash

mkdir task4
cd task4/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

vi inventory
vi task4.yaml
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-playbook --syntax-check task4.yaml 
ansible-playbook task4.yaml 
