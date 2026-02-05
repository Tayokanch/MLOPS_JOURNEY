# How To connect To Remote Nodes using an SSH from the Control

## STEP1

1. From the control Node, Create an Inventory file to set a where the Control Node would connect with the remote Nodes with a temporary password

```ini

node01 ansible_host=`IP` ansible_password= `temporary-password` ansible_become_pass=`temporary-password`
node02 ansible_host=`IP` ansible_password=`temporary-password` ansible_become_pass=`temporary-password(for SUDO)`
[webservers]
node01

[dbservers]
node02

[all_servers:children]
webservers
dbservers

```
1b. run the command `ansible groupName -i filename.ini -m ping`: To ping the Remote Servers

## STEP 2
2. Create a Playbook file to Boostrap the Control Node SSH Key to all our Remote Nodes
```yaml
- name: Apply SSH Public to my servers
  hosts: allservers
  become: yes
  tasks: 
    - name: Add my public SSH key to my remote servers
      authorized_key:
        user: tayo
        state: present
        key: "{{ lookup('file', '~/.ssh/public_key.pub') }}"

```
2b. Run the command: `ansible-playbook filename.yaml --check`: To test the playbook before running it

# STEP 3
3. Run the command to Bootstrap Control Node Public key to the Remote Nodes: `ansible-playbook -i filename.ini filename.yml`

3b. Run the command `ansible-inventory -i filename.ini --graph` : To see the graph of our inventory

# STEP 4

4. Edit the Iventory.init file , remove the t`emporary password` and added our `Contro Node Private key`

```yaml
    [webservers]
    node01 ansible_host=X.X.X.X

    [dbservers]
    node02 ansible_host=X.X.X.X

    [all_servers:children]
    webservers
    dbservers

    [all_servers:vars]
    ansible_user=tayo
    ansible_ssh_private_key_file=~/.ssh/mysshkey

```