
# Docker Port Mapping Explained

## 1. Running a container
Let's say we have a webapp Docker container called `tayokach/vogueshoppingapi`. To start this container, run:

```bash
docker run tayokach/vogueshoppingapi
```

## 2. App response inside the container

Inside the container, the app will respond with:

```text
Running on http://localhost:3100/
```

> ⚠️ Note: Here, `localhost` refers to the container itself, not the VM host.

## 3. Accessing the container internally

Inside the VM or from other containers on the same Docker network, access the app using the container's IP:

```text
http://172.17.0.2:3100
```

* Docker containers have their **own internal network**.
* This IP is **not reachable** from the VM host or LAN without port mapping.

## 4. Accessing the app from the VM host or LAN

To access the container from the VM host or LAN, **port mapping** is required. Without it, requests to:

```text
http://192.168.56.x:3100
```

will fail.

## 5. How port mapping works

Port mapping exposes a port on the VM host and forwards it to a port inside the container. Example:

```bash
docker run -p <VM_host_port>:3100 tayokach/vogueshoppingapi
```

* `<VM_host_port>` → the port on the VM host to access the app
* `3100` → internal container port

## 6. Result of port mapping

After mapping, the app is reachable from the VM host or LAN at:

```text
http://192.168.56.x:<VM_host_port>
```

Traffic sent to this IP and port is forwarded to the container’s internal port, making the web app accessible externally.

## 7. Summary

* **Container port** → where the app listens inside the container (3100)
* **VM host port** → exposed via Docker port mapping (`<VM_host_port>`)
* **Without port mapping** → only internal container or Docker network access is possible
* **With port mapping** → host and LAN can access the container
