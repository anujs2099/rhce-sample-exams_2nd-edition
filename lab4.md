
**Task 1** 

Combining Tasks using Block, Rescue & Always 

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Remove httpd and /var/www/html/index.html if they are already installed using ansible commands
-  Write a playbook as follows:
   - runs on all hosts
   - main task to run using a block:
     - remove the file /var/www/html/index.html
   - if the main task fails, run the below task:
     - create the file /tmp/rescuefile
   - make sure the following task is always run:
     - write a message to logs saying "hello"
   - ensure that the block task fails, rescue task runs, and always task always runs

**Task 2**

Dealing with Failures

-  Project directory name is task2
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - name of the playbook is failure1.yaml
   - runs on all hosts
   - task1 runs a command "echo hello world", ignores the errors, register the output and fails when the word 'world' is found within this output
   - task2 just displays a message 'hello'
   - ensure that the playbook runs all the tasks even if any of the tasks fail
-  Write a playbook as follows:
   - name of the playbook is failure2.yaml
   - runs on all hosts
   - task1 tries to create a lv 'lvnothing' of size '1G' using vg 'vgnothing'. Do not create vgnothing
   - task2 prints the output of task1
   - task3 prints the msg 'volume group doesnt exist' and it fails when the string 'not found' exists in the output of task1
   - ensure that if any task fails, they do not stop the playbook. Do not skip any task

**Task 3**

Managing Changed Status

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - task1 checks local time by running 'date' command. Ensure that the task1 shows an 'ok' status instead of 'changed' status
   - task2 prints the standard output of task1

**Task 4**

Using Task Control

-  Project directory name is task4
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - install and run the mariadb database service
   - it should install the mariadb-server as well as the python3-PyMySQL package. Make sure to use variables & loop statement
   - it should only install on managed nodes that are using version 8 of RHEL or CentOS
   - Only if the mariadb could be installed & started successfully, the mysql_user module should be used to set the database root user password
   - ensure that the changes persist across reboots

**Task 5**

Using Modules to Manipulate Files

-  Project directory name is task5
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - playbook name is file.yaml
   - runs on all hosts
   - create a file /tmp/removeme with owner 'ansible', mode '0640', selinux context type 'public_content_rw_t'
-  Write a playbook as follows:
   - playbook name is copy.yaml
   - runs on all hosts
   - copies local /etc/hosts into /tmp/ on the hosts
   - add the following lines to the newly copied /tmp/hosts but also ensure /tmp/hosts is backed up first
     - 192.168.4.110 host1.example.com
     - 192.168.4.120 host2.example.com
   - verify file checksum for /tmp/hosts with md5 algorithm
   - print checksum results
   - copy the /tmp/hosts from the hosts locally under my.hosts directory on ansible master in the format my.hosts/host/path/to/file

**Task 6**

Managing SELinux File Context

-  Project directory name is task6
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - install the selinux package 'policycoreutils-python-utils'
   - change the selinux context to 'tmp_t' on the file /tmp/removeme such that it persists across reboots & make use of a handler

**Task 7**

Using Jinja2 Templates

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab4/task7/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - install vsftpd
   - uses vsftpd.j2 template as follows:
     - replaces all the '?' within the template with YES values such that the values come dynamically 
     - copies the generated file as /etc/vsftpd/vsftpd.conf on the hosts
     - ensure if there is an existing /etc/vsftpd/vsftpd.conf file, it is backed up

**Task 8**

Using Control Structures in Jinja2 Templates

-  Project directory name is task8
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - write a Jinja2 template as follows:
     - template directory/filename is templates/hosts.j2
     - it generates hosts file within each host as follows:
       - 127.0.0.1 localhost
       - 192.168.174.132 control control.example.com
       - 192.168.174.133 ansible1 ansible1.example.com
       - 192.168.174.134 ansible2 ansible2.example.com
     - do no use static values but instead write a control structure using for or if statements. You can use static value for '127.0.0.1 localhost'
   - run the template and copy the generated file as /etc/hosts on the hosts
   - ensure if there is an existing /etc/hosts file, it is backed up

**Task 9**

Deploying Files with Templates

-  Project directory name is task9
-  Use the inventory file & configuration file from lab1/task2
-  To configure Anonymous FTP upload, the following is accomplished:
   - vsftpd.conf is modified to allow anonymous FTP access and uploads
   - The directory /var/ftp/pub is configured with the '0777' permissions
   - The directory /var/ftp/pub is configured with the appropriate SELinux context label
   - The SELinux boolean ftpd_anon_write is set to on
-  Write a playbook as follows:
   - runs on all hosts
   - ensures that the vsftpd service is installed, enabled
   - ensure that the firewall is opened 
   - the above FTP requirements are met
   - Define variables in the playbook to set vsftpd.conf parameters and use these in a template
-  Write another playbook as follows:
   - playbook name is verify.yaml
   - verify connectivity, uploading the /etc/hosts file to either ansible1 or ansible2 from localhost

**Task 10**

Understanding Ansible Roles & Ansible Galaxy

-  Project directory name is task10
-  Use the inventory file & configuration file from lab1/task2
-  Go to galaxy.ansible.com and download an nginx role
-  Write a playbook as follows:
   - runs on ansible2.example.com
   - uses the nginx role you just downloaded to install nginx


