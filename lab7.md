
**Task 1** 

Using Network Roles for Network Management

-  Project directory name is task1
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on ansible2.example.com
   - create a new network connection where:
     - network name is ens224
     - type is ethernet
     - ip address is 192.168.4.231/24
     - zone is external
   - create the playbook such that the values are derived dynamically where the playbook should be written once and never needed to be modified ever again. Also make use of an include module

**Task 2**

Understanding Modules for Network Management

-  Project directory name is task2
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on ansible2.example.com
   - create a connection name 'new-conn' for the network interface 'ens224' with ip address '10.0.0.10/24' of type 'ethernet'
   - set the hostname to ansible2.example.com if not already set
   - move ens224 to internal zone and enable http service in the firewall configuration
   - ensure that all changes persist across reboots and take effect immediately

**Task 3** 

Using Ansible to Manage IPv6

-  Project directory name is task3
-  Use the inventory file & configuration file from lab1/task2
-  Write a playbook as follows:
   - runs on ansible2.example.com
   - create a connection name 'ipv6-conn' for the network interface 'ens224' with ipv6 address 'fc00::202/64', gateway 'fc00::1', dns '2001:4860:4860::8888' of type 'ethernet'

**Task 4**

Managing Networking

-  Project directory name is task4
-  Use the inventory file & configuration file from lab1/task2
-  Verify that two network interfaces are available. If not, create the second interface
-  Write a playbook as follows:
   - runs on ansible2.example.com
   - the playbook should set up the second interface with network configuration and assign the IP address 192.168.4.30/24 to it




