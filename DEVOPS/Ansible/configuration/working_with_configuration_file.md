# How Ansible Configuration Files Work  
## Overrides, Precedence, and Environment Variables

This document explains how Ansible configuration files work, how default values are interpreted, how configuration files can be overridden, and the order in which Ansible selects them.

---

## Default Ansible Configuration File

By default, Ansible uses the configuration file located at: `/etc/ansible/ansible.cfg`

The **values** defined in this file are what Ansible will consider when running playbooks from anywhere on the control machine, unless another configuration file overrides it.

---

## How to Override the Default Ansible Configuration File

### Option 1: Override Using a Project-Specific `ansible.cfg`

To override the default configuration with a custom one (i.e. to define specific **options** and **values**), you can create an `ansible.cfg` file inside a project directory.

**Examples**:
`/opt/web-playbooks/ansible.cfg`
`/opt/db-playbooks/ansible.cfg`
`/opt/network-playbooks/ansible.cf`


Each configuration file can contain customized settings based on the needs of that project.

When Ansible is executed **from within that directory**, it automatically uses the `ansible.cfg` file found there.

---

### Option 2: Override Using the `ANSIBLE_CONFIG` Environment Variable

Another option is to store a custom configuration file **outside** your playbook directories.

**Example**: `/opt/ansible-web.cfg`

This approach is useful when you want to reuse a single configuration file across **multiple Ansible playbooks**.

Before running an Ansible playbook, you can specify the configuration file location using the `ANSIBLE_CONFIG` environment variable:

```bash
ANSIBLE_CONFIG=/opt/ansible-web.cfg ansible-playbook playbook.yaml
```

In this case, Ansible will use /opt/ansible-web.cfg instead of the default configuration file for that command execution.

The playbook name (playbook.yaml) is only an example. The same configuration file can be reused with any number of playbooks.


## Order in Which Ansible Selects Configuration Files

Ansible searches for configuration files in the following order:

1. A configuration file specified using the environment variable:
   ```bash
   ANSIBLE_CONFIG=/opt/ansible-web.cfg
2. An ansible.cfg file in the current working directory where the playbook is executed

3. A .ansible.cfg file in the user’s home directory

4. The default Ansible configuration file:` /etc/ansible/ansible.cfg`


## Changing Ansible Configuration Parameters Using Environment Variables

In addition to overriding the entire configuration file, you can also override individual Ansible configuration parameters using environment variables.

```bash
ANSIBLE_<PARAMETER_NAME>=<VALUE>
```
**EXAMPLE:**

```bash
ANSIBLE_GATHERING=explicit
```
`Note` : This change applies only to the current command execution and does not permanently modify any configuration file.