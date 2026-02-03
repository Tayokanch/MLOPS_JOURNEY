# Ansible Modules

`Modules` are categorized into groups based based on thier functionality. Example of modules are listed below.

- **system** : This modules is responsible for actions to be performed at the system level such as: `User`, `Group`, `Hostname`, `Iptables`, `Lvg`, `Lvol`, `Make`, `Mount`, `Ping`, `Timezone`, `systemd`, ` Start , Stoping and Restaring Services` 


- **commands**: This modules are used in executing commands or scripts on a host E.g `Command`. `Expect`, `Raw`, `Script`, `Shell`


- **files**: This modules helps work with files E.g `Acl`, `Archive`. `Copy`, `File`, `Find`, `Lineinfile`, `Replace`, `Stat`, `Template` `Unarchieve`


- **database**: This modules helps in working with Databases such as `Mongodb`, `Mssql`, `Mysql`, `Posgresql`, `Proxysql`, `Vertica`. To add Databases or configure DB


- **cloud**: This has a vast collection of modules for various cloud providers like `AWS`, `AZURE`, `GCP`, `Docker`, `VMware` etc. There are number of mudles available for each of these that allow us to perform various task such as creating and destroying instances, performing configuration, changes in networking and security, managing containers, data centers, clusters and virtual networking.


- **windows**: These are modules that helps us use Ansible in a windows environment e.g `Win_copy`, `Win_command`, `Win_path`, `Win_shell` etc
- etc