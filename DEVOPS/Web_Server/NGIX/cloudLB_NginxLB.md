# Cloud Load Balancer vs NGINX Load Balancer

### Cloud Load Balancer

- Provided by your cloud provider (AWS, GCP, Azure)

- Sits at the edge of your network

- Routes traffic to your servers based on simple algorithms: round-robin, least connections

- Performs health checks on backend servers (EC2)

- May terminate SSL/TLS

- Checks inbound rules / firewall security which Ensures that only allowed traffic can reach your EC2 instances

- Can block IPs, restrict ports, and control access


### NGINX Reverse Proxy Load Balancer

- Runs inside your network (VM, EC2)

- Routes traffic intelligently based on:

   - URL paths

   - Request headers

   - Cookies

   - Session data

   - SSL/TLS termination

- Can cache responses, compress data, log tra


----

Internet
   |
   v
Cloud Load Balancer
   |
   v
NGINX (Reverse Proxy / Load Balancer)
   |
   ├─ Express Container 1
   ├─ Express Container 2
   └─ Express Container 3
