# CONFIGURATION COMMANDS
- `ansible-config list` : To see the lists of all configuration commands, thier default values and all the values we can set

- `ansible-config view`: Shpw the current config file
  
- `ansible-config dump`: THis shows us which setting or configuration ansible has picked up and where its picked from 
-` export ANSIBLE_GATHERING=explicit ansible-playbook playbook.yaml`

# How to Execute a Playbook
- `ansible-playbook file-name.yaml`

## How to run an Inventory In a YAML FORMAT
`ansible-playbook -i inventory filename.yaml `