#!/bin/bash

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task3.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task3.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task3.yaml
ansible-playbook --syntax-check task3.yaml
ansible-playbook task3.yaml

## Comments
# ignore_errors: boolean --> per task / continue the playbook even if a task fails by ignoring the failed task
# failed_when: condition --> per task / register variable must be used / succeeds the task if condition is met / if condition is not met, skips the task
# fail module --> fails the task if condition is met / if condition is not met, skips the task
# debug module --> succeeds the task if condition is met / if condition is not met, skips the task

# force_handlers: boolean --> per play / run handlers even if a task fails
# changed_when: boolean or condition --> per task / register variable must be used
# changed_when: 
# - used to allow handlers to run when a change would not normally trigger
# - to disable commands that run successfully from reporting a changed status to an ok status
