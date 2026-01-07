# Difference btw Docker VS ContainerD

# Difference btw these CLI tools
- `ctr`, 
- `crictl`
- `nerdctl`

- In the beginning, there was just **Docker** and there were other tools like **Rocker**. But Docker's user experience made working with container super simple abd hence Docker became the most **dominant container tool**.

- In the beginning  **Kubernetes** was built to orchestate Docker specifically, so Docker and Kubernetes were tighly coupled. And back then, **Kubernetes** only worked with **Docker** and didnt support any other container.
  
- When **Kubernetes** grew in popularity as a container orchestration, other container runtimes like **Rocket** wanted to be using  **Kubernetes** for orchestration i.e Kubernetes users needed it to work with to work with container runtimes that are different from **Docker**.

- So **Kubernetes** introduced an interface called `Container Runtime Interface (CRI)`. **CRI** allowed other Container Runtime vendor e.g(Rocket) to support **Kubernetes** for orchestration as long as they adhere to the Open Container Initiative(OCI) standard. Howerver **Docker** wasn't built to support the **CRI standards** because Docker has been built before CRI was introdcued.

- **Kubernetes** needed to continue support Docker, so they introduced `Docker Shim` which was a way for **K8s** to support **Docker** without using **CRI**. **Docker** isnt just a Container Runtime alone, It consist of multiple tools like Docker `CLI`, `API`, `BUILD`, `VOLUMES`, `AUTH`, `PODS`, `SECURITY`, and its Container Runtime called `RunC`. The **Docker deamon** that is responsible for managing **Runc** is called `containerD`

- **K8s** continue to maintain support **Docker Engine**  directly using  **Docker Shim**. However, having to maintain **Docker shim** was an unnecessary effort and added complicatons. During the release of (*Docker version 1.24*), **K8s**, decided to remove the **Docker Shim** completely and support for **Docker** was removed. However, all images that were built before Docker was removed continue to work becuase Docker followed the *imagespec* from the from the **OCS standard**.

- `containerD`: **ContainerD** on ther other hand is **CRI** compartible and can work directly with **K8s**, so **containerD** can be used as a Runtime on its own. *containerD* is part of *Docker* but a seperate project on its own. **ContainerD** can be installed on its own without having to install Docker

#  How To Run Containers with just ContainerD
- When `ContainerD` is installed, its comes with a `Command Line Interface` called `CTR`. This tool is solely made for debugging ContainerD. The `ctr` is not user friendly and only supports limited features. A better alternative is `nerdctl` tool.

- `nerdctl`: 
  - This is a command line tool that's very similar to `Docker CLI` only used for containerD.
  - It support Docker compose
  - Supports newest features implemented into containerD e.g
      - We can work with Encrypted Container Images
      - Lazy pulling of image
      - P2P Image distribution
      - Image signing and verifying
      - Namespaces in Kubernetes, which is not available in Docker

# How To Run nerdctl Commands
- The `nerdctl` works very similar with **Docker CLI** e.g
  - nerdctl run --name redis redis:alpine
  - nerdctl run  --name webserver -p 80:80

# Container Runtime Interface Control

- `crictl` : 
  - crictl provides a CLI for CRI-compatible container runtimes
  - Must be Installed seperately
  - Used to inspect and debug container runtimes
    - Not to create containers ideally
  - Works accross different runtimes
  
# crictl commands are also similar to Docker CL
- crictl
- crictl pull nginx
- crictl images
- crictl ps -a
- crictl exec -i -t containerID ls
- crictl logs containerID
- crictl pods: This is one of the unique commands in crictl, its aware of pods which is not in` Docker CLI`

## NOTE
- `ContainerD` can use `crictl` to interact with **K8s** because **ContainerD** is CRI-compatible runtime

# NOTE
- Always remember to set the right endpoint if you have multiple runtimes configured
  - unix:///run/containerd/containerd.sock
  - unix:///run/cri/dockerd.sock

# SUMMARY
  - `ctr` : we have the `CTR` cpmmand line utility that comes with ContainerD and works with ContainerD for debugging purposes only. Ideally we wont be using this at all
  
    - Useful for Debugging containers on running on Containerd

- `nerdctl`: This also belongs to the **ContainerD Community**, but this is a Docker-Like CLI for ContainerD used for general purpose to create containers, and supports the same or more features than DOcker CLI.
  
    - Useful for Debugging and General Purpose e.g(creating Images) for ContainerD
  
- `crictl`: This is from the K8s Community mainly used to interact with CRI-compatable runtimes
    - Useful for Debugging on **Kubernetes** and All CRI-Compatible Runtimes

`Finally`: Docker is still the most popular container Solution. However, **K8s** no long require Docker as a runtime