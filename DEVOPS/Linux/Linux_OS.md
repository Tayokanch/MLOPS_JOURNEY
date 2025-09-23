**Introduction to the Linux Kernel**
- What is KERNEL : Kernel is the major component of an operating system, and its the core interface btw computer hardware and its processors. It communicate btw the two Managing resources as effciently as possible

**Responsiblity of Kernel**
- Memory Management
  - Memory in KERNEL are divided into two
  
    - KERNEL SPACE : This is the portion of the memory in which the kernel executes and provides it services. A process running in the kernel space has an unrestricted access to the hardware i.e its strictly reserved for running the kernel code, kernel extentions, and most device drivers.
  
    - USER SPACE : All processes running oustide of the kernel resides in the user space which has restricted access to CPU and memory. e.g, linux, Programming Languages, and graphical tools
  
- Process Management
- Device Drivers
- Systems Colls and Security
  
**Kernel Versions**
- **uname**: This is used to display information about the KERNEL
  
- **uname -r** : This is to get the version of the KERNEL
  
- **dmesg** : This is used to display messages from an area of the kernel called the ring buffer.
  
- **udevadm info**: This is used for query the udev database for device information
  
- **udevadm monitor** - This is a command used in listening to the Kernel uevents.
  
- **lspci** - It shows information about all PCI (Peripheral Component Interconnect) devices attached to your system. e.g Ethernet, Graphics card, USB Controller
  
- **lsblk** - To list the block of disk
  
- **lscpu** - : To display information about the cpu architecture.
  
- **lsmem --summary**: This is use to check the available memory
  
- **runlevel** : This use to get the number which represent what kind of interface the linux is running on e.g 5-graphical interface, 3- CLI
  
- **systemctl get-default** : To determine the current runlevel
  
- **systemctl set-default multi-user.target**: This is to change form graphical.target to CLI (multi-user.target)

**Linux Boot PROCESS**
- BIOS POST - 
- BOOT LOADER
- KERNEL INITIALIZATION
- INIT PROCESS (SYSTEMd) - This is use for bringing Linux to a useful stage