**INTRODUCTION TO PACKAGE MANAGERS**

- What is a Package - A package is is a compressed archieve that contains all the files that are required by a software to run.

- Linux Distribution
  - .RPM, .YUM, .DNF
    - RHEL
    - Centos
    - Fedora
  - .DEB, .APT
    - Ubuntu
    - Debian
    - Linux Mint
    - APT

-RPM : REDHAT PACKAGE MANAGER

- rpm -ivh package_name.rpm - To install a package in a Redhat, Fedora, Centos environment / Distros
- rpm -e package_name.rpm - To uninstall a package in a Redhat, Fedora, Centos environment
- rpm -Uvh package_name.rpm - To upgrade a package in a Redhat, Fedora, Centos environment
- rpm -q package_name.rpm - To query a package in a Redhat, Fedora, Centos environment
- rpm -Vf <path to file> - To verify a package

-YUM : PACKAGE MANAGER - This is also used by the Redhat, CentOS, Fedora Distros, but has an additional feature which is installation of package dependencies.

- yum intall package_name
- yum repolist - This will show all the repo added to the our system
- yum remove package_name
- yum update package_name
- yum --showduplicate list package_name :  To list all available versions of Package

**Package Manager on DEBIAN DISTRO**
- DPKG : Debian Package Manager works for Distros like Ubuntu, PureOS, Linux Mint Distros
  - dpkg -i package_name.deb - To install a package 
  - dpkg -r package_name.deb - To uninstall a package 
  - dpkg -l package_name - To List a package 
  - dpkg -s package_name.rpm - To check status of package
  - dpkg -p <path to file> - To verify a package

-APT - This is a Package Manager to install Debian Distros Packages and their Depencies
  -  apt install package_name : To install a package
  -  apt remove package_name : To remove Package
  -  apt search package_name : To look for a package in a Repo
  -  apt update : to fresh the repository
  -  apt upgrade: This is to install the available upgrade