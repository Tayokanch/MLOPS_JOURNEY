# NETWORK CONFIGURATION IN VIRTUAL MACHINE
- When using `VIRTUAL MACHINE` like VirtualBox / Proxmox / VMware, you have 3 main networking modes:

1. **NAT Network (Network Address Translation) eth0**

   - Each VM gets a private IP (usually 10.x.x.x or 192.168.x.x) assigned automatically by VirtualBox or Proxmox.

   - The host machine acts like a mini-router.

   - VMs can reach the internet, but external devices can’t reach the VMs.

2. **Host-Only Adapter**
   - This acts like a `SWITCH`
   - It creates a small, isolated network between your host PC and your VMs e.g `vboxnet0 → 192.168.56.1`.

   - Use this when you want VMs to talk to each other but not go online.

   - You’ll assign IPs manually (e.g., 192.168.56.10, .11, .12) to each Vms with the `Host only network `vboxnet0 → `192.168.56.1` subnet range
  
  - `ip addr show` : This is to list / Show `Host Only IP` and the `VMs Ip` 
  
    **Subnet example:**
    - Host: 192.168.56.1

    - VM1: 192.168.56.10

    - VM2: 192.168.56.20

3. **Bridged Adapter enp0s3**

- Makes the VM appear as another device on your real LAN (same network as your router).

- The VM gets an IP from your home router (like your phone or laptop).

✅ Best for simulating real-world setups or if you want to SSH from another device on your network.

# NOTE :
- A `Virtual Machine` can have multiple configuration at once