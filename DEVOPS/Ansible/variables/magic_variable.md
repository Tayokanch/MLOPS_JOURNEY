# Magic Variable

1.  One of the magic Variable called hostvar (hostvars[host_name].variable_name) can be used to get a variable declared in another host

- We can also use this to get information about other host E.g

```yaml
- name: print dns Server
  hosts: all
  tasks:
  - debugs:
        msg: '{{hostvars[host_name].ansible_host}} {{hostvars[host_name].ansible_connection}}'
```


2. `groups` Magic Variable. This is returns all the groups the current host is part of. Example: 

```INI
web1 ansible_host=170.20.1.100
web2 ansible_host=170.20.1.101
web3 ansible_host=170.20.1.102


[web_servers]
web1
web2
web3

[americas]
web1
web2


[asia]
web3

```

# Inside Web1 host

```yaml
- name: web1 Groups
  hosts: all
  tasks:
  - debugs:
        msg: {{group_names}}
```
# Output = webservers, 


3. `inventory_hostname` Magic Variable : This is the name configured for the host in the `inventory file`