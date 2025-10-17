# VIRTUALIZATION SOFTWARE OR HYPERVISORS

- A hypervisor is software that lets you run multiple virtual machines (VMs) on a single physical computer.

- **Type 1 Hypervisor**: These are installed directly on bare metal such as a laptop or server and then the Vms are created inside them
  - VMware ESXi
  - Microsoft Hyper-v

- **Type 2 Hypervisor**: These are types of hypervisors that runs on an existing operating systems. These allows you to easily get started with virtual machines on your laptops without having to install any other operating system or reimage your laptop
  
    - `**Oracle VirtualBox**`: This is a free and open-source tool/ It can be installed and used tp create Virtual Machines on Windows, Linux, or Mac exactly the same way, it supports backup and revory with snapshots and clone features. It let you run multiple MVs together as also helps you create seperate networks withing your laptop for different groups of VMs.

    - `**VMWare Workstation**`: This on the othe hand, is not a free software. it can only be install on Windows or Linux and not Mac. And it supports advanced features like snapshots and clones. There is a free version of` VMWare Workstation` known ad `VMWare Player` that's available for windows and Linux. And VMware Fusion which is availabe for Mac. Howerver, these do not have many features that `VMWare workstation` or `VitualBox`supports, such as running multiple Vms at the same time or taking snapshots or performing advanced networking configurations. So. `Oracle VituralBox` is the best choice for `HOME LAB`

# Oracle VirtualBox
- After downloading and Install the `Oracle Virtual` Box

-  Click and on `new button`, to create a new VM
  
-  Give your VM a name, and specfiy the location where you want the files of the VM to be created. The VM itself and the disc if the VM are stored as a file on the host Operating System.

-  Set the `type` to be `linux` and choose which `version` e.g Redhat 64-bit

-  The next step is assinging `Memory resources` the ideal size should be 1000mb, 1gb

-  The next things downlaod an `pre-configured, pre-built` Images OS online from `OSboxes.org`. On this site you can find list of OS Images like Ubuntu, Debian, CentOS, Fedora, etc. `Use existing VM Hard disk file` and select the `OS Image file ` we've just downloaded.
-  The next thing is to start the VM by right click on the VM and select start, the Normal Start


# HOW TO SSH INTO REMOTE VM

- Make sure the `VM` has an IP Address and you're using the right IP Address
- Make sure the SSH service is running on the remote VM
- `ip addr show` : To display the Ip Address of the Remote VM. This displays some information. Apart of it is :
  - 1. The `lo`: `LOOPBACk` address
  - 2. the `enp0s3`: `BROADCAST, MULTICAST` address. Which our Remote VM IP 
- if Ip are not set we can do this by `ip addr (IP/

- Subnet-mask) 192.168/1.10/24 etho0`
- `service sshd status`: To check if SSH is running and if not
- `service sshd start`: To start SSH