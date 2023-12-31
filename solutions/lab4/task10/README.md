# Roles
# Understanding Directory Structure Best Practices
-  Project directory structure (example)
   - ~/myproject/ansible.cfg
   - ~/myproject/inventory-dev
   - ~/myproject/inventory-prod
   - ~/myproject/site.yaml
   - ~/myproject/lamp.yaml
   - ~/myproject/file.yaml
   - ~/myproject/group_vars/lamp
   - ~/myproject/group_vars/file
   - ~/myproject/host_vars/<host>

-  Roles directory structure (example)
   - ~/.ansible/roles/nginx
   - ~/.ansible/roles/samba
   - ~/.ansible/roles/nfs
   - ~/.ansible/roles/httpd

-  The below playbooks can call any of the roles mentioned above
   - ~/myproject/site.yaml
   - ~/myproject/lamp.yaml
   - ~/myproject/file.yaml

# Mandatory Role Structure
$ tree myrole/
- myrole/
- ├── defaults --> default values of role variables. Overwritten by play level variables
- │   └── main.yaml
- ├── handlers --> handlers defined
- │   └── main.yaml
- ├── meta --> role metadata such as information about author, license, dependencies, etc
- │   └── main.yaml
- ├── tasks --> tasks defined
- │   └── main.yaml
- ├── tests --> optional inventory file and test.yaml playbook to test the role
- │   ├── inventory
- │   └── test.yaml
- ├── vars --> standard variables that cannot be overwritten by play level variables
- │   └── main.yaml
- ├── templates --> Jinja2 templates
- ├── files --> static files needed by role tasks

# Roles can be obtained in many ways
- You can write your own roles
- For RHEL, the rhel-system-roles package is available
- The community provides roles through the Ansible Galaxy website (galaxy.ansible.com)
- As tar balls
- From RPM packages
- Through Ansible Content Collections from Red Hat automation hub at https://console.redhat.com

# Roles precendence order (highest to lowest order)
- ./roles in project directory
- ~/.ansible/roles 
- /etc/ansible/roles
- /usr/share/ansible/roles

# How to install Roles
- ansible-galaxy role install abc-role -p mypath

# Additional Notes on Roles
- role tasks will run before any task that is defined in a playbook
- use roles: section in the play header OR import_role: / include_role: module in a task
- use pre_tasks statement to define playbook tasks that needs to be run before role tasks
- use post_tasks statement to define playbook tasks that needs to be run after all playbook & role tasks
- Order of Execution (first to last)
  - pre_tasks
    - handlers
  - role tasks
  - playbook tasks
  - post_tasks
  - handlers
- Default roles env variable 'roles_path'
  - works with only ansible & ansible-playbook commands but not with ansible-navigator EE
  - can be defined within ansible.cfg

# Content Collections
# Content Collections include the following
- modules
- roles
- plugins --> extend the python code on the ansible control host

# Understanding Content Collection Naming
- Fully Qualified Collection Name (FQCN) such as ansible.netcommon
- Within this FQN, plugins, modules, etc are addressed such as ansible.netcommon.cli_command
- Before collections, you would address a module name such as user, now you address this module as ansible.builtin.user

# Using Content Collections in Playbooks
- In the play header, the collections keyword can be used
- It takes a list of collections as its argument
- After using the collections keyword, the collection itself can be addressed the old way. eg, selinux instead of ansible.posix.selinux

# How to install Content Collections
- galaxy.ansible.com
  - ansible-galaxy collection install my.collection -p collections
- Directly from tar archives
  - ansible-galaxy collection install /my/collection.tar.gz -p collections
- From a URL
  - ansible-galaxy collection install https://my.example.local/my.collection.tar.gz -p collections
- From Git
  - ansible-galaxy collection install git@git.example.local:mygitaccount/mycollection.git -p collections
- Ansible Automation Platform

# Additional Notes on Content Collections
- In ansible 2.9, collections are NOT a default part of Ansible. You would have to install individual collections
- In ansible 2.10 and later, collections are installed by default
  - ansible-galaxy collection list
- Regardless of whether you are using just Ansible Core or ansible-navigator in AAP, you will always have access to one content collection (ansible.builtin)
- To get access to more collections, you may want to define and use a custom EE
- Default collections env variable 'collections_path'
  - works with only ansible & ansible-playbook commands but not with ansible-navigator EE
  - can be defined within ansible.cfg 

# Ansible-navigator
- gets modules from content collections using its container-based execution environments (EEs)
- ansible-navigator.yaml configuration file can be created within:
  - user home directory
  - current project directory



