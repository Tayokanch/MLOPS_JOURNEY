* To let our Application server / DB server only from a specific PORT and now where else. To do this:
  - Connect the Client to the Remote Server through SSH
  
  - Then Filter Traffic on the Server. To do this, we will make use of IPtables. In Red Hat and CentOS systems it should be installed by default. However, on Ubuntu you may have to install it manually. To install IPtables run **sudo apt install iptables** to list the default rules configured in the system run **sudo iptables -L**
    - By default are 3 types of rules or chains
    - 1. INPUT: This chain is applicable to the network traffic coming into the system (remote server). In this case, to allow SSH connection from the client laptop, we would need to add an input rule on the remote server e.g (EC2 instance) permitting SSH connections. *context: Who can send data to your server*
  
    - 2. OUTPUT - This chain is responsible for connections initiated by this server to other systems e.g when remote server initiates a connection to another server, such as a database server to query or write some data. *context: Where your remote server is allowed to send or request data*
  
    - 3. FORWARD: This is typically used in network routers where the data is forwarded to other devices in the network

**HOW TO SET INCOMING RULES ON THE REMOTE SERVER TO ALLOW SSH CONNECTION FROM Particular CLIENT**

*INCOMING RULES TO ACCEPT*

- **<iptables -A INPUT -p tcp -s ip_address --dport 22 -j ACCEPT>**
  
  - **-A** = Add Rule
  - **-p** = protocol which is the (tcp)
  - **-s** = Source Ip or range which you want the connection to be permitted. This is the Ip address of the client
  * **-d** = Destination
  *  **-dport** = Destination Port which is (22) for ssh
  *  **-j** = Action to take. Which is to accept the connection
NOTE: This rule so far would allow any client to connect with the Remote server, and to stop this. we do this:

*INCOMING RULES TO DROP*
- **iptables -A INPUT -p tcp --dport 22 -j DROP** : This is to drop traffic from any other source except from our source /client iptables


*OUTGOING RULES TO ACCEPT*
- <iptables -A OUTPUT -p tcp -d ip_address  --dport port -j ACCEPT>
- <iptables -I OUTPUT -p tcp -d ip_address --dport port -j ACCEPT> : This add rules to the top in IPTABLE CAIN
  
*OUTGOING RULES TO DROP*
 - <iptables -A OUTPUT -p tcp --dport port -j DROP>

  
NOTE- The IP address will be the Ip address of the HOST we want to connect to or make a request to
* To Delete a Rule
  - <iptables -D OUTPUT position_of_the_rule(num)>

**BETTER Explanation on INPUT & OUTPUT CHAIN**

1. Incoming traffic (INPUT)

  * Packet arrives at DB server
  * INPUT chain checks:
     - Source IP (who sent it)
     - Destination Port
  * Rules matches - Accept or Drop
  
2. Outgoing traffic (OUTPUT)

  * Packet leaving DB server
  * OUTPUT chain checks:
     - Destination IP (where it’s going)
     - Destination port (which port on the remote machine)
  * Rules matches - Accept or Drop
Destination port (which port on DB server)








Destination IP (where it’s going)

Destination port (which port on the remote machine)

Rule matches → ACCEPT or DROP