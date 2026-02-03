# Understanding How Inventory and Playbooks Work Together in Ansible

This document explains **why variables live in the inventory**, **why playbooks still reference them**, and **how both work together** to create resources in Ansible.

We will use:
1. A **user creation example** (your original task)
2. A **web + database servers example** (separate scenario)

---

## Core Idea (Very Important)

> **Inventory = Data + Targets**  
> **Playbook = Logic + Actions**

- Inventory does **NOT** create anything
- Playbooks do **NOT** store permanent environment data
- Resources are created **only when a playbook runs**

They are designed to work **together**, not independently.

---

# Example 1: User Creation Using Inventory Variables

## Inventory File

Path: /home/bob/playbooks/inventory


```ini
localhost ansible_connection=local
node01 ansible_host=node01
node02 ansible_host=node02

[all:vars]
user_details={
  'username': 'admin',
  'password': 'secret_pass',
  'email': 'admin@example.com'
}
```
- What the inventory does
- Defines which hosts exist
- Stores environment data (variables)
- Does not create users
- Does not execute tasks
- At this point, nothing has changed on any server.

## Playbook File
path: `/home/bob/playbooks/user_setup.yaml
`

---
```yaml
- hosts: all
  become: yes
  tasks:
    - name: Create a user using inventory variables
      user:
        name: "{{ user_details.username }}"
        password: "{{ user_details.password }}"
        comment: "{{ user_details.email }}"
        state: present
```

*What the playbook does?*

- Reads variables from the inventory
- Uses the user module
- Creates a Linux user on the target hosts

---

# Example 2: Web Servers and Database Servers (Same Analogy)

`Inventory File`

```ini
web-server1 ansible_host=192.168.1.10
web-server2 ansible_host=192.168.1.11
db_server ansible_host=192.168.1.20

[web]
web-server1
web-server2

[db]
db_server

[web:vars]
nginx_port=80
app_name=my_web_app
users_details=[
  {'username': 'webadmin', 'password': 'secret_pass', 'role': 'sudo'},
  {'username': 'webadmin', 'password': 'secret_pass', 'role': 'app'}
]

[db:vars]
db_name=app_db
db_user=db_admin
users_details=[
  {'username': 'admin', 'password': 'secret_pass', 'role': 'sudo'},
  {'name': 'backup', 'role': 'readonly'}
]


```

`playbook File`

```yaml
---
- name: 'Create User, Install Packages and start thme'
    hosts: web #This is the host we want to perform the playbook operation on, it could be a localhost, group of servers [web] or a single server
    become: yes
    tasks:
        - name: Create users on web servers
        user:
            name: "{{ item.username }}"
            state: present
        loop: "{{ users_details }}"

        - name: Install nginx on web servers
        package:
            name: nginx
            state: present

        - name: Start and enable nginx
        service:
            name: nginx
            state: started
            enabled: yes
- name: 'Create User to Database'
    hosts: db # Run this play only on all hosts that belong to the group db.
    become: yes
    tasks:
        - name: Create users on database server
        user:
            name: "{{ item.name }}"
            state: present
        loop: "{{ users_details }}"


```