#!/bin/bash

mkdir task10
cd task10/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

echo "username: alpha" > secret.yaml
Go to docs.ansible.com --> ansible core --> ansible core documentation --> frequently asked questions --> ctrl + F and search for password
ansible all -i localhost, -m debug -a "msg={{ 'password' | password_hash('sha512', 'mysecretsalt') }}"
vi secret.yaml
# Paste the hashed value as password
cat secret.yaml
ansible-vault encrypt secret.yaml
# Provide a password
cat secret.yaml
ansible-vault view secret.yaml
# Provide the same password

echo password > vault-pass
cat vault-pass

chmod 600 vault-pass
ls -ltr

vi task10.yaml
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-playbook --syntax-check task10.yaml 
ansible-playbook -h | grep -i vault
ansible-playbook --vault-pass-file vault-pass --syntax-check task10.yaml
ansible-playbook --vault-pass-file vault-pass task10.yaml
# Provide the same password
id alpha
su - alpha
# Provide the password of user nano to test if login works
