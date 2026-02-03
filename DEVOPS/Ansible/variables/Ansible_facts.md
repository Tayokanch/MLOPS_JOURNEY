# What is ANsible Facts

- When we run a playbook, and when Ansible connects to a target machine, it first collects information about the machine such as its basic system information e.g `system architecture`, `version of OS` `processor details`, `memory details` etc. It collects information about the host's network connectivity e.g `the different interfaces`, `IP addresses`, `MAC address`, `FQDN` as well as device information like different `disk`, `volumes`, `mounts`, and the amount of space available on them. This information are known as Facts in Ansible.

- Ansible gathers all these facts mentioned above using a `setup module`. This setup module is run automatically by Ansible to gather facts about the hosts when you run a playbook, even if we didnt run this use the module in our playbook.


# HOW TO SEE ANSIBLE FACT
- All facts in Ansible are stored in the vaariable `ansible_facts` in a playbook. To retrive it facts from a Playbook:

```yaml
  - debug:
        var: ansible_facts #logging out facts
```

# HOW TO STOP ANSIBLE FROM GATHERING FACTS
```yaml
- name: Print Hello message
  hosts: all
  gather_facts: no #Telling ansible not to gather facts

  - debug:
        var: ansible_facts
```