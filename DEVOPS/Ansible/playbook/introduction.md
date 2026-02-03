# PLAYBOOKS

` Ansible Playbooks` are Ansible's orchestration Languages. It is in Playbooks that we define what we wanyt Ansible to do. It is a set of instruction you provdie Ansible to work its magic. E.G:
- It can be as simple as running a series of commands on different servers in a sequence and restarting those servers in a particular oder.
- Or it could be a complex as `deploying hundreds of VMs in a public and private cloud infrastructure `, `provisioning storage to VMs`, `setting up theiur network and cluster configuration`, `configuring appplication` such as web serves or DB, `setting up load balancing, monitoring components, installing configuration and backup

- Playbooks are written in a YAML file, its define by a set of activties
  - `- hosts`: This takes the name of the host to apply the intruction to. It could also be a group of servers
  - `tasks`: This is an action to be performed on the host e.g *Execute a Commad*, *Run a Script*, *Install a Package*, *Shutdown/Restart*
  - `modules`: This is the different actions run by `tasks` e.g **user**, **command**, **package**, **apt**, **yum**, **service**

# How to Execute a Playbook
- `ansible-playbook file-name.yaml`