# Ansible Configuration Files

- When we install `Ansible`, just like any other software, it creates a default configuration file at the location `/etc/ansible/ansible.cfg`. The ansible configuration file governs the behavior of Ansible using a set of parameters.

- Ansible configuration file  `/etc/ansible/ansible.cfg` is divided into several section:
  - [defaults] section : This has the location of the `inventory file`, `log_path file`, `library`, `roles_path` `timeout` for ssh connection attempt etc
  - [inventory] section
  - [privilege_escalation] section
  - [paramiko_connection] section
  - [ssh_connection] section
  - [persistent_connection] section 
  - [colors] section 

- Within each of these sections, we have a number of `options` and their `values` e.g .


```yml
`/etc/ansible/ansible.cfg`
# Default section

[defaults]

inventory           = /etc/ansible/hosts    #This is the location of the ansible invenroty files
log_path            = /var/log/ansible.log  #This is the location to the logs file
library             = /usr/shar/my_modules/ #This is the location to the modules
roles_path          = /etc/ansible/roles    #This is the location to the roles
action_plugines     = /usr/share/ansible/plugins/action #This is the location to the plugins

gathering           = implicit # Whether Ansible should be grathering facts by default

#SSH TIMEOUT
timeout             = 10 # How long to wait before giving up on an SSH connection attepmt
forks               = 5   # How many hosts should Ansible target at a time when executing playbooks against multiple hosts in 


# inventory section

[inventory]

enable_plugins          = host_list, virtualbox, yaml, constructed
```
