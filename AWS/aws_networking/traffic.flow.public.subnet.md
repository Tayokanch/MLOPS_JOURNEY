# ROUTE TABLE 

A Route Table in Amazon Virtual Private Cloud is a set of rules that determines where network traffic from a subnet should go. It's usually assosiate or attach to a `Public Subnet`

`Every route contains two key parts:`

- *Destination*: The IP range the rule applies to  **0.0.0.0/0**
- *Target*: The next hop where the traffic should be sent **Internet Gateway**
- `0.0.0.0/0 → Internet Gateway`: If traffic is going to any IP address outside the VPC, send it to the Internet Gateway.

---

# Security Group

A Security Group acts like a firewall for resources like Amazon EC.

It controls:

- Inbound traffic (who can access the instance)
    - Allow HTTP (80) from 0.0.0.0/0
    - Allow SSH (22) from your IP

- Outbound traffic (where the instance can send traffic)
  - Allow all traffic

## Traffic Flow from Public subnet to the Internet

   ![Traffic Flow In a Public Subnet](../images/publicSubnetNetworkFlow.gif)



## Traffic Flow from Multiple Public subnets to the Internet

User Request
   ↓
Internet
   ↓
Internet Gateway
   ↓
Application Load Balancer (port 80)
ALB security Group
Inbound
HTTP (80) from 0.0.0.0/0
   ↓
Target Group
Target type: Instances
Protocol: HTTP
Port: 3033
VPC: your-vpc
   ↓
EC2 Instance (API on port 3033)
EC2 Security Group
Inbound
TCP 3033 from ALB Security Group