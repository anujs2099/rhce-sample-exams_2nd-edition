# Understanding Modules Related to User Management
- user
- group
- pamd --> configures PAM
- authorized_key --> copies ssh public keys from ansible control to the target user ~/.ssh/authorized_keys
- known_hosts --> updates the /etc/ssh/ssh_known_hosts file with the host key of a managed host
- lineinfile --> modifies configuration files based on regex

