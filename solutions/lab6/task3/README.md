# Understanding Software Management Modules
- package --> distribution agnostic
- win_package --> for Windows
- apt --> for Ubuntu
- yum --> for RHEL/CentOS
- yum_repository --> for managing yum repositories
- package_facts --> returns information about package as facts
- rpm_key --> adds or removes gpg keys from an rpm package database
- redhat_subscription --> uses the subscription_manager command to manage subscriptions
- rhn_register --> manages redhat network registration using rhnreg_ks 
- rhn_channel --> manages RHN Channel subscription
- others can be found at https://docs.ansible.com/ansible/latest/modules/list_of_packaging_modules.html


