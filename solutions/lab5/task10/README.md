# Using Check Mode
- check_mode: yes / always_run: yes
  - task level
- ansible-playbook --check myplaybook.yaml
  - playbook level
- Limitation: if the second task depends on the task before, the second task cannot run successfully if the task before hasn't run successfully

# Using Check Mode on Templates
- ansible-playbook --check --diff myplaybook.yaml

