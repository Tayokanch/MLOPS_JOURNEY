ansible-projects/
├── hosts.ini                # inventory file
├── playbooks/
│    ├── ssh_bootstraps.yaml
│    ├── webservers.yaml
│    └── dbservers.yaml
│    roles/
│    ├── nginx/
│    │    ├── defaults/
│    │    │    └── main.yml
│    │    ├── vars/
│    │    │    └── main.yml
│    │    ├── files/
│    │    │    └── nginx.conf
│    │    ├── templates/
│    │    │    └── nginx.j2
│    │    ├── tasks/
│    │    │    ├── main.yml
│    │    │    ├── start_nginx.yaml
│    │    │    └── enable_nginx.yaml
│    │    ├── handlers/
│    │    │    └── main.yml
│    │    ├── meta/
│    │    │    └── main.yml
│    │    ├── README.md
│    │    └── tests/
│    │         ├── inventory
│    │         └── test.yml
│    │
│    └── postgresql/
│         ├── defaults/
│         │    └── main.yml
│         ├── vars/
│         │    └── main.yml
│         ├── files/
│         │    └── pg_hba.conf
│         ├── templates/
│         │    └── postgresql.conf.j2
│         ├── tasks/
│         │    ├── main.yml
│         │    ├── start_postgresql.yaml
│         │    └── enable_postgresql.yaml
│         ├── handlers/
│         │    └── main.yml
│         ├── meta/
│         │    └── main.yml
│         ├── README.md
│         └── tests/
│              ├── inventory
│              └── test.yml
