# TYPES OF VARIABLE

# STRING
username: "admin

# Number
max_connections: 100

# Boolean
debug_mode: true 


# List
vars:
    packages:
        - nginx
        - postgresql
        - git
Reference : {{packages[0]}} #nginx
# Dictionary
user:
    name: "admin"
    password: "secret123!"
Reference : {{user.name}}

# Vairable Precedence
- Any variable define in the host e.g `db_server01 ansible_host=server1.company.com/IP ansible_connection=winrm ansible_user=administrator ansible_password=password ansible_dns_server=10.5.5.3`, takes precedence over the variable defined in the group


# How to store the output of one task using (debug module)
```yaml
- name: Check /etc/hosts file
  hosts: all
  tasks:
  - shell: cat /etc/hosts
        register: result # This will caputre the output of the cat /etc/hosts
  - debug:
        var: result # To log what we've saved inside of result
```

# List of how Var takes PRECEDENCE based on where they are decleared from Top to Bottom
- Role Defaults : least Precedence
- Group Vars
- Host Vars
- Host Facts
- Play Vars
- Roles Vars
- Include Vars
- Set Facts
- Extra Vars : Example `ansible-playbook playbook.yaml --extra-vars "dns_server=10.1.1.1`. This has the highest precedence i.e all the host declared in this playbook would now have a dns_server with the one declared in this command, if anyone has been written inside thye playbook with the host, it will be override
  
whats is the difference btw playbook and inventory
what is the similarity btw them
show me what a playbook look like and what an inventory look like