# Handlers in Ansible

Think of a handler as a special task that only runs when something changes. It is also  a task that runs only when another task tells it to.

- Handlers in Ansible are special tasks associated with specific events or notifications 
- They are typically defined in a playbook and are executed only when triggered by a Task notifying them
- Handlers enable us to manage actions that depend on the state or configuration changes of our systems