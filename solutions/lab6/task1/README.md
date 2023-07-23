# Understanding Modules to Check
- uri
- script
- stat --> checks on file or directory status and gets information about it
- assert --> if something is true, print a message. If it is not true, print a different message. Like fail module. Used with 'that' argument. Not with 'when' statement.
- fail --> if something is true, fail the whole task. Used with when statement.

# Troubleshooting Authentication Issues
- Ensure remote_user setting is there and existence of remote user on the managed hosts
- Confirm host key setup. Try ssh login from the command line
- Verify become and become_user
- Check that sudo is configured correctly

# Troubleshooting Connection to Managed Hosts
- When a host is available at different IP addresses / names, you can use ansible_host in inventory to specify how to connect
  - web.example.com ansible_host=192.168.4.100 

# Using Ad Hoc Commands to Test Connectivity
- ping module
  - ansible ansible1 -m ping
- --become option to also test privilege escalation
  - ansible ansible1 -m ping --become
- use the command or shell module to run ad-hoc commands
  - ansible ansible1 -m shell -a "free -m"

# Analyzing Playbooks
- Add verbosity using -v upto -vvvv
- Enable ansible logging through ansible.cfg

# Avoiding Errors in Playbook Best Practices
- The name of the plays and tasks should make sense
- Include comments to clarify difficult bits
- Use white spaces between plays and tasks to make playbooks more readable 
- Indentation is essential
- Keep playbooks simple and small by:
  - seperating your code into task files, seperate var files, roles, etc
  - using includes to include the above seperated code
