# Playbook Verication

- Verifying a playbook before executing it in a production environment is crusial practice. Its like a rehearsal before the actual performance, allowing us to catch and rectify any errors or unexpexted behaviors in a controlled environment.

# How to verify Playbooks in Ansible
- `Check Mode` : This is a dry-run mode where Ansible executes the playbooks without anyt actual chnages on the hosts. It allows us to see what chnages the playbook will make without applying them. To run a Playbook in a `Check Mode` we use **--check**


- `Diff Mode`: When **Diff Mode** is used with **Check Mode**, it shows the differences btw the current state and the state after the Playbook is run. It provides a before and after comparison, which can be useful for understanding what changes a Playbook will make. To run a Playbook in a `Diff Mode` we use **--check** **--diff**


- `systax Check Mode`: This mode check the systax of your Playbook for any Error. Its a quick way to catch syntax error that could cause your Playbook to fail.  To run a Playbook in a `syntax-check Mode` we use **--syntax-check**