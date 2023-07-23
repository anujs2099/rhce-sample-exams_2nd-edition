
**Task 1** 

Using the Ansible Galaxy Command Line Tool

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Run appropriate commands:
   - to get help for ansible-galaxy command
   - to search for the nginx role from galaxy.ansible.com
   - to search for the nginx role from galaxy.ansible.com from the author geerlingguy
   - to search for the wordpress role from galaxy.ansible.com from platform EL 
   - to find information about the ansible-galaxy role bertvv.wordpress
   - to install the ansible-galaxy role bertvv.wordpress
   - to list all ansible-galaxy roles
   - to remove the ansible-galaxy role bertvv.wordpress that you just installed
   - to create a directory structure for creating your own role where:
     - username is sammy_roger
     - role name is myrole
     - created in the project directory
   - to create a directory structure for creating your own role where:
     - username is sammy_roger
     - role name is shared-role
     - created in the ~/.ansible/roles/ directory
-  Create a roles/requirements.yaml in the current project directory to install the following roles:
   - geerlingguy.docker with latest version
   - geerlingguy.nginx with 1.13 version. Role directory name should be my-nginx
     - The role is not found so it will not be installed
     - Go to galaxy.ansible.com and use the latest version but define it in requirements.yaml
-  Ensure the roles from requirements.yaml gets installed in the roles/ directory

**Task 2**

Managing Order of Execution

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab5/task2/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - uses the roles/motd role
   - run a task that updates yum cache
   - run the above task before all playbook & role tasks 

**Task 3**

Using Content Collections

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on ansible control host
   - ensure that the fact gathering is turned off
   - change the SELinux status from enabled to enforcing
   - ensure to use the appropriate collection. Check if it is already installed. If not, please install it
-  Create a collections/requirements.yaml in the current project directory to install the following collections:
   - f5networks.f5_modules from cloud.redhat.com/api/automation-hub
   - ansible.netcommon from galaxy.ansible.com
-  Ensure the collections from requirements.yaml gets installed in the collections/ directory
-  Change the default collections path to collections/ and install a new collection nginxinc.nginx_core
-  After installing the collections, delete them

**Task 4**

Using Ansible Roles

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab5/task4/
-  Use the inventory file & configuration file from lab1/task2
-  Create a role 'vhost' as follows:
   - install httpd, start httpd, enable httpd
   - configure an Apache vhost which uses vhost.conf.j2 template as follows:
     - all references to the hostname 'test' or its fqdn 'test.example.com' are replaced with Ansible facts
     - copies the generated file as /etc/httpd/conf.d/vhost.conf on the hosts
     - ensure if there is an existing /etc/httpd/conf.d/vhost.conf file, it is backed up
-  Create a playbook as follows:
   - use the role 'vhost'
   - runs on the group lamp whose members are ansible1.example.com & ansible2.example.com
   - copy the local index.html from files/html/ to /var/www/vhosts/test where test is a hostname. Replace test with Ansible facts
   - verify everything through a verify task

**Task 5**

Understanding RHEL System Roles

-  Project directory name is task5
-  Use the inventory file & configuration file from lab1/task2
-  Run appropriate commands to: 
   - install rhel system roles
   - find out all the files installed by the package for rhel system roles
   - find out where all the rhel system roles were installed
   - find out where all the examples are located for the rhel system roles
   - explore the rhel selinux system role like how to use it in a playbook, etc
   - explore the rhel timesync system role like how to use it in a playbook, etc
-  Write a playbook as follows:
   - runs on all hosts
   - sets up the following ntp servers:
     - 0.rhel.pool.ntp.org, 1.rhel.pool.ntp.org, 2.rhel.pool.ntp.org, 3.rhel.pool.ntp.org
     - iburst is set to true
   - sets up the timezone to America/Los_Angeles
   - uses rhel-system-role for timesync

**Task 6**

Using RHEL System Roles

-  Project directory name is task6
-  Use the inventory file & configuration file from lab1/task2
-  Setup ansible2 virtual machine with an additional network card
-  Use a rhel-system-role to set up network cards in ansible2 managed machine. You can use a simple configuration where the interface is set to DHCP

**Task 7**

Using imported tasks

-  Project directory name is task7
-  Use the inventory file & configuration file from lab1/task2
-  Output the present inventory file in json format
-  Write a playbook as follows:
   - runs on all hosts
   - imports the task: 'install-and-setup.yaml' to install the package httpd 
   - make use of variables when defining httpd
-  Write the 'install-and-setup.yaml' task file as follows:
   - installs the latest version of a package
   - starts and enables the installed service

**Task 8**

Using Ansible in Large Environments & Troubleshooting Ansible

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab5/task8/
-  Analyze the project in the ./lab directory
   - optimize it for use in a large environment
   - fix all the errors

**Task 9**

Managing Ansible Logs

-  Project directory name is task9
-  Use the inventory file & configuration file from lab1/task2
-  Make ansible write logs to /var/log/ansible.log and verify that it works. Remove the change
-  Make ansible write logs to ./log/ansible.log in the current project directory and verify that it works

**Task 10**

Using Check Mode

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab5/task10/
-  Use the inventory file & configuration file from lab1/task2
-  Run the ansible-playbook in check mode on vsftpd.yml. There isn't anything interesting going on


