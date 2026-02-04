- `ansible-galaxy init role-name`: to create a role

- `ansible-galaxy search role-name`: To search for a role. **NOTE**: We could also use the galaxy UI [text](https://galaxy.ansible.com/ui/) to search for Roles

- `ansible-galaxy install role-name`: To install a Role. This automatically get downloaded in `/etc/ansible/roles/` directory

- `ansible-galaxy list`: To view the list of roles

- `ansible-config dump | grep ROLE`: To view the locations where Roles are installed

- `ansible-galaxy install rolename -p ./roles` : To install role in a current directory