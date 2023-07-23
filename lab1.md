
**Task 1** 

Static Inventory Files

-  Create an Ansible Inventory file as follows:
   - Project directory name is task1
   - Inventory file name is inventory
   - Group names with hosts to include:
     - web
       - ansible1.example.com
     - db
       - ansible2.example.com
   - add control.example.com ansible master as a seperate host
-  List all hosts using this inventory file
-  List all ungrouped hosts using this inventory file
-  Use the appropriate ansible-navigator command to list all hosts using this inventory file in json format
-  List all hosts using the default inventory file

**Task 2**

Ansible Configuration File

-  Create an Ansible Configuration file as follows:
   - Project directory name is task2
   - Copy the Inventory file from the previous task into this directory
   - Configuration file name is ansible.cfg
   - Make sure it includes the following defaults:
     - Inventory points to the correct inventory file
     - Remote user is ansible
     - The remote user should not ask for password
     - Host key checking is false
   - Make sure to set the following privilege_escalation steps:
     - All playbooks and ansible commands should run as root through sudo
     - It should not ask for the root password
   - Make sure that the new ansible.cfg is being used

**Task 3**

Ansible Configuration File - Order of Precendence

-  Find out the order of precedence about the ansible configuration files using the man pages

**Task 4**

Using help regarding Modules

-  Using appropriate command, list all the examples of using ping module
-  Using appropriate command, find out the mandatory arguments for copy module

**Task 5**

Using Ad Hoc Commands

-  Project directory name is task5
-  Use the inventory file & configuration file from task2
-  Using appropriate command, create a user named as lisa on all hosts  
-  Rerun the same command again and you would notice that it will not recreate the user again (idempotency)
-  Using appropriate command, verify that the user exists on all hosts without ssh'ing into the hosts
-  Using apprpriate command, delete user lisa from all hosts
-  Verify that the user has been deleted

**Task 6**

Using Essential modules

-  Project directory name is task6
-  Use the inventory file & configuration file from task2
-  Using appropriate command, install the httpd service on all hosts
-  Using appropriate command, start the httpd service on all hosts and enable it on reboot
-  Using appropriate command, reboot ansible2.example.com and verify it has been rebooted
-  Using appropriate command, list all the shell variables on all hosts
-  Using appropriate command, modify the file /etc/motd to include only the words 'hello world'
-  Remove python3 from the host ansible2.example & then assuming ansible user is not present, install python on the host

**Task 7**

Working with Playbooks --> Write an Ansible Playbook as follows

-  Project directory name is task7
-  Use the inventory file & configuration file from task2
-  It should have only one play which does the following
   - Name the play as you wish
   - Runs on ansible2.example.com
   - First task should
     - Install vsftpd
   - Second task should
     - Start up vsftpd service and make sure the service is automatically started on every reboot
   - Third task should
     - Create a readme file at /var/ftp/pub/README with the text "welcome to this FTP server"
     - Make sure the file is read-only and can can be read by all users
     - Make sure the file should only be overwritten on subsequent runs of the playbook if it is not present and it should not be overwritten if the contents of the source are different than the destination file
-  Verify the syntax of the playbook before running it
-  Check the output of the playbook without running it
-  Run the playbook and verify that it worked

**Task 8**

Fix Syntax Errors in Playbooks --> Fix the Syntax Error in the vsftpd-err.yaml playbook

-  Project directory name is task8
-  Use the inventory file & configuration file from task2
-  Playbook location is rhce-sample-exams_1st-edition/files/vsftpd-err.yaml
-  Fix the issue with the playbook but do not run it

**Task 9**

Writing Multiple-Play Playbooks

-  Project directory name is task9
-  Use the inventory file & configuration file from task2
-  All changes below should persist across reboots
-  Play 1
   - Name is "enable webserver"
   - Host is ansible1.example.com
   - Install httpd & firewalld packages
   - The httpd package should have a index.html installed at /var/www/html/ with the contents "hello world"
   - Start the httpd & firewalld services
   - Open the http service through firewalld
-  Play 2
   - Name is "test webserver access"
   - Host is localhost
   - Run this play as user ansible and not as user root
   - Connect to the webserver on url http://ansible1.example.com and make sure the task displays the output from the page

**Task 10**

Writing Undo Playbooks

-  Project directory name is task10
-  Use the inventory file & configuration file from task2
-  All changes below should persist across reboots
-  Write a playbook that will undo all modifications from task9 but ensure that firewalld isn't removed or disabled or stopped
