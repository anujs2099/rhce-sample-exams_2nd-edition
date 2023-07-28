
**Task 1** 

Variables defined in playbook (Play scope)

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Create a playbook that creates a user by the name "lisa" on all hosts as follows:
   - using the name of the user as a variable within the playbook
   - make sure the user uses the shell /bin/bash

**Task 2**

Variables defined in playbook (Play scope)

-  Project directory name is task2
-  Use the inventory file & configuration file from task1
-  Create a playbook that creates a user by the name "roger" on all hosts as follows:
   - using the variable file users.yaml located within the directory vars/ 
   - roger is defined within this variable file users.yaml
   - make sure the user uses the shell /bin/bash
-  Create a playbook that creates a user where the username is asked during the playbook execution

**Task 3**

Variables defined from command line (Global scope)

-  Project directory name is task3
-  Use the inventory file & configuration file from task1
-  Use the same playbook and vars/users.yaml file from task2 but this time create a new user by the name "tom" from the command line
-  Do not modify the existing playbook/include file

**Task 4**

Variables defined from inventory file which are directly assigned to a host (Host scope)

-  Project directory name is task4
-  Use the inventory file & configuration file from task1
-  Create a playbook that runs on all hosts where the following users are defined only within the inventory:
   - create a user by the name "king" on ansible1.example.com
   - create a user by the name "queen" on ansible2.example.com
   - make sure the user uses the shell /bin/bash

**Task 5**

Variables defined from inventory file which are assigned to a host group (Host scope)

-  Project directory name is task5
-  Use the inventory file & configuration file from task1
-  Create a playbook that runs on all hosts as follows:
   - create a new host group by the name "jazz" within the inventory including both ansible1.example.com & ansible2.example.com
   - create a user by the name "james" assigned to the host group "jazz" within the inventory file
   - make sure the user uses the shell /bin/bash

**Task 6**

Variables defined using include files for hosts (Host scope)

-  Project directory name is task6
-  Use the inventory file & configuration file from task1
-  Create a playbook as follows:
   - using the host vars directory, define the user "larry" for ansible1.example.com
   - using the host vars directory, define the user "marry" for ansible2.example.com
   - make sure the user uses the shell /bin/bash
   - make sure the user is not defined within the playbook or within the inventory

**Task 7**

Variables defined using include files for groups (Host scope)

-  Project directory name is task7
-  Use the inventory file & configuration file from task1
-  Create a playbook as follows:
   - create a new host group by the name "thorn" within the inventory including both ansible1.example.com & ansible2.example.com
   - using the group vars directory, define the user "teddy" for the group "thorn"
   - make sure the user uses the shell /bin/bash
   - make sure the user is not defined within the playbook or within the inventory 

**Task 8**

Using Multi-valued variables 

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab2/task8
-  Use the inventory file & configuration file from task1
-  Create two playbooks as follows:
   - playbook 1
     - name is multi-list.yaml
     - runs on ansible1.example.com
     - uses vars/users-list
     - prints the following messages:
       - "User linda has homedirectory /home/linda and shell /bin/bash"
       - "User lisa has homedirectory /home/lisa and shell /bin/bash"
       - ...
       - "the second item is {'username': 'lisa', 'homedir': '/home/lisa', 'shell': 'bin/bash'}"
     - use a loop or with_items
   - playbook 2
     - name is multi-dictionary.yaml
     - runs on ansible1.example.com
     - uses vars/users-dictionary
     - prints the following message:
       - "User linda has homedirectory /home/linda and shell /bin/bash"

**Task 9**

Using Ansible Vault - prompted for password

-  Project directory name is task9
-  Use the inventory file & configuration file from task1
-  Create a ansible-vault encrypted file secret.yaml with the following variables:
   - username is nano
   - pwhash uses the password 'password'
-  Create a playbook as follows:
   - runs on all hosts
   - uses vars present within secret.yaml
   - creates the user using the contents of secret.yaml
   - make sure the playbook asks for the vault password each time it executes

**Task 10**

Using Ansible Vault - using a password-file

-  Project directory name is task10
-  Use the inventory file & configuration file from task1
-  Create a ansible-vault encrypted file secret.yaml with the following variables:
   - username is alpha
   - pwhash uses the password 'password'
-  Save the password that you used to encrypt secret.yaml to a file vault-pass
-  Ensure that only ansible user has read & write permissions to vault-pass
-  Create a playbook as follows:
   - runs on all hosts
   - uses vars present within secret.yaml
   - creates the user using the contents of secret.yaml 
   - make sure the playbook gets the vault password automatically using the file vault-pass

