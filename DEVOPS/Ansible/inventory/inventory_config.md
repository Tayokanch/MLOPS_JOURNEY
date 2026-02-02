# INVENTORY CONFIGURATION IN ANSIBLE

- Ansible can work with one or multiple systems in our infrascture at the same time. In order to work with multiple servers, Ansible needs to establish connectivity to those servers. This is done using `SSH for Linux` and `PowerShell remoting for windows`. That's what makes Ansible agentless which means we dont need to install any additional software on the target machines to be able to work with Andsible

- Infomation about the `target systems` i.e (the server that needs to be connected to Ansible) is stored in an inventory file. if you don't create a new inventory file, Ansible used the default inventory file located at `/etc/ansible/hosts`.

**EXAMPLE OF AN INVENTORY FILE**
```INI
server1.company.com
server2.company.com
```
- we can also have group different server together by in an inventory file 

```INI
[mail]
server1.company.com
server2.company.com

[database]
server3.company.com
server4.company.com

[web]
server3.company.com
server4.company.com
```

**ALIES IN ANSIBLE INVENTORY**
- web ansible_host=server1.company.com/IP
- db ansible_host=server2.compamy.com/IP
- mail ansible_host=server3.company.com/IP
- web2 ansible_host=server4.company.com/IP

# MORE INVENTORY PARAMETER
- ansible_connection: ssh/winrm/localhost
- ansible_port: 22/5986
- ansible_user : root/administrator
- ansible_ssh_pass : Password

# MORE ON INVENTORY FILE 
`LINUX BASED HOST`
```INIT
- web ansible_host=server1.company.com/IP   ansible_connection=ssh  ansible_user=root ansible_ssh_pass=password

`WINDOWS BASED HOST`
- db ansible_host=server1.company.com/IP ansible_connection=winrm   ansible_user=administrator ansible_password=password
```

`WINDOWS BASED HOST`
```INIT
- db ansible_host=server1.company.com/IP ansible_connection=winrm   ansible_user=administrator ansible_password=password
```
# TYPES OF INVENTORY FORMATS

- INI
``INI
[webservers]
web1.example.com
web2.example.com

[dbservers]
db1.example.com
db2.example.com

- YAML
```yaml
all: 
    children:
        webservers:
            hosts:
                web1.example.com:
                web2.example.com:
        dbservers:
            host:
                db1.example.com:
                db2.example.com:
```
