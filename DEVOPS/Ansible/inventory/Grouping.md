# Grouping Iventory

Imagine we are managing hundreds of servers spread across multiple locations, serving different purposes. some are `Web Servers`, some are `Database Servers` and others could be `Applications Servers`. Managing these servers individually can be a daunting task. Example, if we need to update the `Web Servers`, we would have to manually do the update on each web server which is not only timne-consuming but also prone to errors.

To manage this kind of complex IT Infrasture, it would be convenience to categorize servers bases on their `ROLES`, `LOCATIONS`, or any other criteria that makes sense in our environment. This is where `GROUPING` comes in handy.

In our instance above, to update all the `Web Servers`, would group them with a comman or most appropraite name E.G we could group all the `web servers` together and label them `WEB SERRVER`. All the web server hosts that falls under this would have a common group name and can be update altogether, saving us time and reducing the risk of error


# Parent-Child Relationship
 Imagine if our `web servers` are spread accross different locations, and servers in each locations need to have some location-specific configuration. We could create seperate groups for webservers in each locations, but that would mean duplicating alot of common configurations. This is where Ansible's Parent-Child Relationship come in handy.

 1. We will Create a Parent Group Called `Web Servers` and a 
 2. Create a Child Group for each location E.g `Web Servers_US`, `Web Servers_EU`, `Web Servers_IN` etc

 then define a common configuration for the Child Group Web Servers at the Parent Group Level as needed 

# Example
 ```INI

 # Child grouping
 [webservers_us]
 server1_us.com ansible_host=192.168.8.101
 server2_us.com ansible_host=192.168.8.102

 [webservers_eu]
 server1_eu.com ansible_host=10.12.8.101
 server2_eu.com ansible_host=10.12.8.102

# Parent Child Relationship
 [webservers:children]
 webservers_us
 webservers_eu


 ```


```yaml
all:
    children:
        webservers: #Parent Child Relationship
            children:
                webservers_us: #Child Group
                    hosts:
                        server1_us.com
                            ansible_host: 192.168.8.101
                         server2_us.com
                            ansible_host: 192.168.8.102
                webservers_eu: #Child Group
                    hosts:
                        server1_eu.com
                            ansible_host: 10.12.8.101
                         server2_eu.com
                            ansible_host: 10.12.8.102


```