
**Task 1** 

Working with Facts

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Run an ansible ad-hoc command to gather facts from all hosts
-  Write a playbook as follows:
   - name is facts.yaml
   - runs on all hosts
   - prints all the ansible facts
   - cannot use the setup module
-  Write a playbook as follows:
   - name is ipfact.yaml
   - runs on all hosts
   - prints the following message where 10.130.11.14 is just an example ip address:
     - "This host uses IP address 10.130.11.14"
-  Disable the facts to be gathered as vars (By default this is set to True)
-  Write a playbook as follows:
   - copy ipfact.yaml as disablefact.yaml and remove all references to ansible_facts variable
   - disable the fact gathering through the playbook
   - make sure the default "Gathering facts" task doesn't appear

**Task 2**

Creating Custom Facts

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab3/task2/
-  Use the inventory file & configuration file from lab1/task2
-  Run an ansible ad-hoc command to display only the custom facts
-  Write a playbook as follows:
   - runs on all hosts
   - uses two variables:
     - name of the facts directory as a variable
     - myfacts.fact filename as a variable
   - copy the custom fact file myfacts.fact to the hosts at facts directory
   - install the package & start the service by referring to the custom fact
   - display only the custom facts
-  Make sure all changes persist across reboots

**Task 3**

Using Loops and Items - simple example

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - uses a variable "my_services" which has the following values:
     - httpd
     - vsftpd
   - just install the above two packages without starting them
   - ensure to use loop

**Task 4**

Using Loops and Items - using hashes/dictionaries 

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab3/task4/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - uses the variable file my_users
   - create the users given in the file my_users with membership to the given secondary groups
   - ensure to use loop
   - ensure to register the output of the loop and display it as a message but only display the stdout_lines

**Task 5**

Using Register Variables

-  Project directory name is task5
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - print out the message "passwd contains user lisa" only when the user lisa is found within the output of the command "cat /etc/passwd"
   - do not run any other command than "cat /etc/passwd"

**Task 6**

Using when to Run Tasks Conditionally

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab3/task6/
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - uses the variable file supported_distros. You can modify this file as needed
   - installs httpd only when the ansible distribution matches supported distros
   - ensure that httpd is installed successfully as the hosts are using RedHat linux
   - use the command 'ansible all -m yum -a "name=httpd state=absent"' to uninstall httpd if already installed

**Task 7**

Testing Multiple Conditions

-  Project directory name is task7
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on all hosts
   - installs package httpd only when distribution is "RedHat" and free memory available is atleast 1512
   - make sure to use a distribution independent module to install httpd. It is okay if the httpd doesn't get installed if the conditions are not met
   - use the command 'ansible all -m yum -a "name=httpd state=absent"' to uninstall httpd if already installed

**Task 8**

Combining Loops and Conditionals

-  Project directory name is task8
-  Use the inventory file & configuration file from lab1/task2
-  Stop crond service on ansible2.example.com
-  Write a playbook as follows:
   - runs on all hosts
   - run a linux command to check whether crond service is running or not
   - restart sshd service if crond service is running

**Task 9**

Using Handlers - forcefully triggering handlers

-  Project directory name is ~/rhce-sample-exams_1st-edition/files/lab3/task9/
-  Use the inventory file & configuration file from lab1/task2
-  Remove httpd and /var/www/html/index.html if they are already installed
-  Write a playbook as follows:
   - runs on all hosts
   - installs latest version of httpd
   - copies locally available index.html to /var/www/html/ directory
     - notifies a handler "restart_web" which restarts httpd
   - copies a non-existent file nothing.html to /var/www/html/ directory
   - the handler would not trigger. Override the default playbook behavior to trigger the handler without changing any of the tasks

**Task 10**

Using Blocks - simple usage

-  Project directory name is task10
-  Use the inventory file & configuration file from lab1/task2
-  Remove httpd and /var/www/html/index.html if they are already installed using ansible commands
-  Write a playbook as follows:
   - runs on all hosts
   - use the following tasks within a block:
     - install httpd
     - start httpd
   - only run the tasks within a block when distribution is RedHat
