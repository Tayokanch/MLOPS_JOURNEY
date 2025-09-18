THERE ARE 3 TYPES OF FILES IN LINUX

1. Regular files : These are Images, Scripts, Configuration, Data files
2. Directory: These is a type of files that stores other files e.g /home, /root , /home/tayo/myproject
3. Special Files: This can be sub-categorised into 5 
  - Character files : This allows the OS to Communicate with IO devices serially e.g Mouse, Keyboard
  - Block files : This read or write to device in block
  - Links - Hard links, Soft Links
4. Sockets files
5. Named Pipes

**HOW TO IDENTIFY DIFFERENT TYPES OF FILES IN LINUX
- file /directory or file_name
- ls -d  /directory or file_name


**FILE SYSTEM HIERARCHY**
- /(Root Partition)
- /bin - This is where basic program in Binary are saved e.g mkdir, ls, cp, mv commmands
- /boot
- /dev - This is where external harddisk and devices are store
- /etc - This is a very important file where all configurations files are stored
- /home - This is the directory for the User
- /lib
- /media - This where to save all media
- /mnt - For security sofware
- /opt - This where we save all the 3rd party program e.g IDE
- /tmp - To store Temporay data
- /usr - This is where all UserLand applications and their data reside e.g Mozilla firefox, Vi text editor
- /var - This is the directory to which the system writes data such as logs and chache data

 