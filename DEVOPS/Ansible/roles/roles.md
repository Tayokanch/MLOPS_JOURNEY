# Ansible Roles – Complete Guide

## Overview

In Ansible, assigning a **role** means bundling everything required to configure a server for a specific purpose.

For example, configuring a **MySQL Server** usually involves:

- Installing MySQL packages
- Configuring the MySQL service
- Creating databases and users

While this can be done using a single playbook, **Ansible Roles** allow these steps to be:

- Organized
- Reusable
- Shareable
- Easier to maintain

Instead of rewriting the same playbook repeatedly, all related tasks are packaged into a **role**, which can be reused across environments or shared with others.

---

## Why Use Ansible Roles?

- Enforces a **standard structure**
- Improves **readability** of playbooks
- Encourages **reusability**
- Makes automation easier to **scale**
- Aligns with **Ansible community best practices**

---

## Ansible Role Best Practices

Ansible roles follow a predefined directory structure:

1. All tasks go into the `tasks/` directory  
2. All variables go into the `vars/` directory  
3. All default variables go into the `defaults/` directory  
4. All handlers go into the `handlers/` directory  
5. All templates go into the `templates/` directory  

Ansible automatically loads files named `main.yml` from these directories.

---

## Ansible Galaxy (Role Community)

**Ansible Galaxy** is a public repository containing thousands of ready-made roles.

Before writing your own role, it is highly recommended to:

- Search Ansible Galaxy
- Reuse an existing role if possible
- Customize only when necessary

This saves time and ensures best practices are followed.

---

## Creating an Ansible Role

Roles do not need to be created manually.

Ansible Galaxy provides a command to generate a **role skeleton**:
```bash
ansible-galaxy init mysql

```
# Standard Ansible Role File Structure
ansible-project/
│
├── inventory/
│     └── production.ini
│
├── playbooks/
│     └── site.yml
│
├── roles/
│     ├── nginx/
│     │     ├── tasks/
│     │     │     └── main.yml
│     │     │
│     │     ├── handlers/
│     │     │     └── main.yml
│     │     │
│     │     ├── templates/
│     │     │
│     │     ├── files/
│     │     │
│     │     ├── vars/
│     │     │     └── main.yml
│     │     │
│     │     ├── defaults/
│     │     │     └── main.yml
│     │     │
│     │     ├── meta/
│     │     │     └── main.yml
│     │     │
│     │     └── README.md
│     │
│     ├── postgres/
│     │
│     └── common/
│
├── group_vars/
│
├── host_vars/
│
└── ansible.cfg




## How to Use Roles in a Playbook

For Ansible to recognize and use roles, the role must be placed in a directory that Ansible knows how to search.

The most common and recommended approach is to store roles inside a `roles/` directory located in the same folder as the playbook.

### Project Structure Example

```text
ansible-projects/
│
├─ inventory/
│   ├─ hosts.ini           # all nodes grouped
│   └─ group_vars/
│       ├─ all.yml
│       ├─ webservers.yml
│       └─ dbservers.yml
│
├─ playbooks/
│   ├─ bootstrap_ssh.yaml
│   ├─ webservers.yaml
│   └─ dbservers.yaml
│
├─ roles/
│   ├─ webserver/
│   │   ├─ tasks/
│   │   └─ templates/
│   └─ dbserver/
│       ├─ tasks/
│       └─ templates/
└─ README.md

```
### Using a Role Inside a Playbook

```yaml
- name: Configure MySQL Server
  hosts: db_servers
  become: yes

  roles:
    - mysql

```