**RHCE Labs**

**Setup**
1.  Make sure you have 3 rhel 8 vmware vms ready as follows:
    - cpu: 2
    - memory: 1 GiB
    - storage: 20 GB
    - hostnames configured using "sudo hostnamectl set-hostname control"
      - control
      - ansible1
      - ansible2
      - verify hostnames using "hostname"
    - /etc/hosts file configured as follows where ipaddress is the actual ip address of the vm using "sudo vi /etc/hosts" & find out the ipaddress using "ip addr"
      - ipaddress control control.example.com
      - ipaddress ansible1 ansible1.example.com
      - ipaddress ansible2 ansible2.example.com
      - ping the vms from one another
2.  Setup all nodes as student user by running the following scripts in the order they are numbered and only on the nodes mentioned in the filename:
    - sudo sh install-scripts/0-all-nodes_after-restoring-snapshot.sh
    - sudo sh install-scripts/1-control-node_install-ansible.sh
    - sudo sh install-scripts/2-all-nodes_install-python.sh
    - sudo sh install-scripts/3-all-nodes_create-dedicated-user_setup-sudo.sh
    - Provide password for ansible user twice in this step which is just password
      - sh install-scripts/4-control-node_setup-passwordless-ssh.sh
3.  Management node "control" requirements:
    - use ansible user from now on
    - bashrc requirements: Make sure to copy/paste the below lines in your ~/.bashrc and then source it
    - vimrc requirements: Make sure to copy/paste the below lines in your ~/.vimrc and then source it
      - set expandtab
      - set tabstop=2
      - set shiftwidth=2


