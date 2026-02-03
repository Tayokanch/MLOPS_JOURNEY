# variables In Ansible

- Variables are used in storing information that varies with each host. 

# Use Case
 Imagine we are trying to apply patches to hundreds of sevrers, we only need a single playbook for all hundred servers. However, its variable that store information about the different hostnames, usernames or passwords that are different for each server

## Examples of Vatriable in INI format
`ansible_host`=server1.company.com/IP 
`ansible_connection`=winrm   
`ansible_user`=administrator 
`ansible_password`=password

## Examples of Variable in YAML format
```yaml
    name: Add DNS server to resolv.conf
    hosts: localhost
    vars: # Variable
        dns_server: 10.1.250.10 # Varaible Name and Value
    tasks:
        - lineinfile:
            path: /etc/resolv.conf
            line: 'nameserver {{dns_server}}`
```

# another method
- create a filename.yaml in the name of the host inside the playbook i.e if the host is web, you create a web.yaml
- And put all the Variable and Values there

```web.yaml

http_port: 8081
dns_server: 10.1.250.10
inter_ip_range: 192.0.2.0
```

# HOW TO REVERENCE VARIABLE IN PLAYBOOKS
-`{{variable_name}}`, if written with another string / statement
- `'{{variable_name}}'`, if written alone with no other string / statement


user_details={'username': 'admin', 'password': 'secret_pass', 'email': 'admin@example.com'}