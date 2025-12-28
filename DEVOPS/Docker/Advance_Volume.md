# Mapping Volume on Postgres
volumes: 
    - pgdata:/var/lib/postgresql/data

# Where the data actually lives

- The volume is managed by Docker, not directly in your project folder.
- The named volumes are typically stored in: `/var/lib/docker/volumes/volume_name/_data`
  
NOTE ON macOS:
On macOS, this path is inside the Docker VM, not your local filesystem directly.

You cannot just ls /var/lib/docker/volumes on macOS and see it, because Docker Desktop runs a lightweight Linux VM. However, on a `LINUXOS` you can ls the `volumeData` and it also stores the data directly on the `Linux Host Machine`

Docker abstracts this so you don’t need to worry about the underlying path. You access it only via the container:

NOTE ON LinuxOS: