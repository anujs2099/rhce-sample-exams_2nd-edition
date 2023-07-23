# Addressing Hosts in Playbooks
- \-hosts: '\*.example.com'
- \-hosts: '192.168.\*'
- \-hosts: 'web\*'
- \-hosts: web1,db1,192.168.4.2
- \-hosts: web,&eastcoast --> means hosts that are member of both web & eastcoast groups
- \-hosts: web,!web1 
- \-hosts: all,!web 

# Configuring Parallelism
- Running playbooks against many hosts
- If one task gets completed on all hosts, then ansible moves to the next task
- set 'folks = n' in ansible.cfg to change the maximum number of simultaneous hosts
- alternatively use '-f nn' to specify the max number of forks as argument to ansible & ansible-playbook commands
- limited by the cpu/memory of the control node so be careful

# Managing Rolling Updates
- Default behavior: If one task gets completed on all hosts, then ansible moves to the next task
- To override default behavior, use serial keyword in the playbook to run hosts through the entire play in batches

# Understanding Inclusion
- includes happen for only tasks but imports happen for both playbooks & tasks
- An include is a dynamic process. Ansible processes the included files as soon as they are called
  - include_tasks / include
    - task level
    - ansible-playbook --list-tasks <playbook> will not show the tasks
    - ansible-playbook --start-at-task '<task>' <playbook> doesn't work
    - You cannot trigger a handler in an imported task file from the main task file
  - include_vars
    - play level
    - task level
  - include_role
    - task level
- An import is a static process. Ansible pre-processes the imported files before the actual play is started
  - import_playbook
    - beginning of the playbook
  - use import_tasks to import tasks from a task file in a playbook. It will be imported where it is included
    - task level
   
