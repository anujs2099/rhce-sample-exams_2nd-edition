
**Task 1** 

Using Modules for Troubleshooting and Testing

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook 'bashversion.yaml' as follows:
   - runs on ansible2.example.com
   - get information about all installed packages
   - print the package facts
   - prints a message with version of bash installed when bash is found in the list of installed packages
-  Write a playbook 'assertstat.yaml' as follows:
   - runs on ansible2.example.com
   - gets information about the /etc/ directory
   - check if /etc/ is a directory or not
     - if it is, then it displays the message: "All assertions passed"
     - if it isn't, then it displays the message: "Assertion failed"

**Task 2**

Implementing a Playbook to Manage Software

-  Project directory name is task2
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - install a yum repository such that the following repository file/information is installed at /etc/yum.repos.d/task2-repos.repo
     - "[task2-repo]",
     - "baseurl = https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm",
     - "gpgcheck = 0",
     - "name = EPEL repository"
   - install a package nmap such that different packages can be installed without modifying the playbook each time
   - get information about all installed packages
   - display package information about the installed package nmap only when it got installed successfully
- It is okay if the above playbook gets failed at "install a package nmap" task. We will fix it in the next task.

**Task 3**

Managing Software

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - set up a repository on control.example.com. This repository should offer multiple files, including the nmap file. Provide a file list using variables
   - configure ansible1 and ansible2 to use the repository that is provided through the packages repository
   - install the nmap package from this repository

**Task 4**

Implementing a Playbook to Manage Users - example1

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab6/task4/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook 'setup_users.yaml' as follows:
   - runs on ansible1.example.com
   - add the following groups
     - sales
     - account
   - add the following users belonging to their given groups
     - user linda to group sales
     - user lori to group sales
     - user lisa to group account
     - user lucy to group account
   - ensure that for any user or group that needs to be added, it gets done without modifying the playbook each time
   - add SSH public keys from the ./files/ directory to the ~/.ssh/authorized_keys file for each user
   - add sales group members to sudo such that they can run any command with sudo permissions without having to type the password each time
   - disable root SSH login
   - ensure ssh is only restarted after root SSH login gets disabled

**Task 5**

Implementing a Playbook to Manage Users - example2

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab6/task5/
-  Use the inventory file & configuration file from lab1/task2
-  Write a 'sudoers.j2' jinja2 file as follows:
   - using for and/or if statements, write the code such that users who have the value of sudo set to true are the only ones that can run any command with sudo permissions without having to type the password each time
-  Modify the playbook 'setup_users.yaml" from the previous task as follows:
   - runs on ansible2.example.com
   - uses the vars/defaults variable file
   - add the following users belonging to their given groups
     - user jack to group developers
     - user romero to group admins
     - user shanika to group dbas
   - use the sudoers.j2 jinja template to grant sudo permissions

**Task 6**

Managing Encrypted Passwords

-  Project directory name is task6
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on ansible2.example.com
   - encrypt the password 'mypassword' using sha512 algorithm and a secret salt of your choice
   - create the user joseph using the encrypted password
   - ensure that 'mypassword' doesn't get mentioned anywhere in any variable file nor in the playbook

**Task 7**

Implementing a Playbook to Manage Processes and Tasks

-  Project directory name is task7
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook 'setup-crontab.yaml' as follows:
   - runs on ansible1.example.com
   - run a cronjob as follows:
     - give it any name
     - runs every 2 minutes between 8am to 6pm for user ansible
     - it writes the message "entry written at \<date\>" where \<date\> is the date of the entry
     - message is written to the file /tmp/cron-keepalive
     - cron file is /etc/cron.d/keep-alive-messages where this cronjob is needed
-  Write a playbook 'delete-cronjob.yaml' as follows:
   - runs on ansible1.example.com
   - delete the cronjob that we setup in the previous playbook 'setup-crontab.yaml'
   - ensure that the file /etc/cron.d/keep-alive-messages gets deleted as well
-  Write a playbook 'setup-at-task.yaml' as follows:
   - runs on ansible2.example.com
   - ensure that at utility is installed
   - a job that runs the command "date > /tmp/my-at-file" after 1 minute
   - ensure that the job only runs once
   - ensure that if there is another similar job, a new job is not created
-  Write a playbook 'setup-boot-target.yaml' as follows:
   - runs on ansible1.example.com
   - set the systemd boot target to graphical such that when the system reboots, it goes into the graphical interface

**Task 8**

Managing Processes and Tasks

-  Project directory name is task8
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on ansible1.example.com
   - set the default boot state of the server to multi-user.target
   - reboot your server after doing so
   - configure your playbook such that it will show the message "successfully rebooted" once it is available again

**Task 9**

Implementing a Playbook to Manage Storage

-  Project directory name is task9
-  Use the inventory file & configuration file from lab1/task2
-  Add 2GiB nvme disk to ansible1.example.com
-  Write a playbook 'setup-storage' as follows:
   - runs on ansible1.example.com
   - creates a partition as follows if not already created:
     - device: /dev/nvme0n2
     - number: 1
     - start: 1MiB
     - end: 1GiB
   - creates a vgs if not already created:
     - name: vgweb
     - devices: /dev/nvme0n2p1
   - creates the following lvs if not already created, creates an XFS filesystem and mounts the fileystem at given path:
     - lv1
       - name: lvwebdocs
       - size: 512M
       - vgroup: vgweb
       - path: /var/www
     - lv2
       - name: lvlogs
       - size: 256M
       - vgroup: vgweb
       - path: /var/log/httpd
    - ensure that the playbook is dynamic such that it is able to create any new storage resources without itself being modified
      - this only applies to the volume groups, logical volumes, filesystems, and mounts. This does not apply to partitions

**Task 10**

Managing Storage

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab6/task10/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - detects all storage devices of type cdroms and san luns
   - also list all the above disks and also specifically list the 2nd disk
   - example output is given at example.txt



