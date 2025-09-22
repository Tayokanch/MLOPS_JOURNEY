*INTRODUCTION TO STORAGE BASICS*
- Block device is a type of file that can be found under the **/dev/** directory. It usually represents a piece of hardware that can store data. Computer SSD is an example of block storage in Linux. It is called <**Block Storage**> because data is read or written to it in blocks or chunks of space.
  
  - To see the list of block devices in your system, run the commmand <**lsblk**>. 
    - This command would show a **DISK** called **SDA** with the size in **gigabyte**, which present the entire **DISK**.
    - Then there would be devices **SDA1** to **SDA3** which are of type part and are the **disk partitions**
    - Each block device has a major and a minor number. E.g
        **MAJOR NUMBER**
      - 1 = RAM
      - 3 = HARD DISK or CD ROM
      - 6 = PARALLEL PRINTERS
      - 8 = SCSI DISK : This is a device which has a fixed naming convention that starts wirt SD. This is the reason why the disk in the partition names start with SD.
        **MINOR NUMBER**
        This numbers are used to distinquish individual, physical or logical devices which in this case identify the whole disk and the partitions created

    - **PARTITION**
        This is the breaking down of the entire Block storage / Disk into smaller segments. The concept of partitioning allows us to segment space and use each partition for a specific purpose.
        - The information about partitions is saved in a **partition table**. This information can be read in many ways, which are:
          - <**lsblk**> command 
          - <**Fdisk -l**> command : This can be used to read partitions and to delete partitions
  
    - **PARTITION TYPES**
        *There 3 types of disk Partitions*
        1. *** Primary partition***: This is the type of partition that can be used to boot an operating system.
        2.*** Extended Partition:*** This is a kind of partition that can not be used on it own but can but host Logical partition,  or where Logical partition are created. With the restriction of maximum four primary partitions
        2. **Logical Partition**: This are the partitions created in an Extended Partition.

*HOW DISK ARE PARTITIONED*
    Disk are partitioned through a partitioning scheme also know as a partition table

*MBR*
Master Boot Record(MBR) is a partitioning scheme, and there can only be 4 primary partitions in MBR
- The maximun size per disc is **two terabytes**. if you want more than four partitions per disk, we would need to creat the fourth partition as an extended partition

*GPT*
This stands for G-U-I-D partition table and is a more recent partitioning scheme that was created to address the limitations of MBR. Theoretically, GPT can have an unlimited number of partitions per disc. This is usally only limited by the restrictions imposed by the Operating system itself


*HOW TO CREATE PARTITION*
RUN:
- <**gdisk dev/device_path**>
- ? : To print all avaialable options
- n : To create **new partition**
  - Partition number: press Enter (defaults to 1).
  - First sector: press Enter (defaults to the first available sector).
  - Last sector: type the size e.g (+500M)
  - c : To give it a name
- w : This is to Write the partition table
- Run **lsblk**,  **fdisk -l** , **gdisk** : To see the partition table

-  You can also run <**ls-l**> in the /dev/ directory and look for files that have <**B**> as the first character to see the block storage files

*HOW TO MAKE A DISK USEABLE IN THE OS*
 - Disk and the partitions are seen by the linux kernel as a raw disk. To write to a disk or a partition, we must first create a filesystem. The filesystem define how data is stored on a disk.
 - After creating a filesystem, we must mount it to a directory, and thats when we can read or write data to it

**COMMONLY USED FILESYSTEMS**

- **EXT2**,**EXT3**, **EXT4** : Both EXT2 amd EXT3 allow a maximum file size of 2TB and a maximum volume size of 4TB. These 2 filesystems do a great job of reliably storing data. The significant difference btw the two is that in **EXT2**", in case of an unclean shutdown such as one cause by a power outage, it can take quite sometimes for the system to boot back up . **EXt3** file systems, however, did not have this drawback. it implemented additional features that allowed quicker startup after an ungraceful shutdown. **The EXT4** further improves the **EXT3** filesystem and is still one of the most common general purpose filesystem used today. It can now support *16 TB* of maximum file size and up to 1 Exabyte of volume size.

**HOW TO CREATE FILESYSTEMS E.g EXT4**
- **mkfs.ext4 /dev/block_device_name or diskname** e.g /dev/sdb1: To create an EXT4 filesystem
  
-  **mkdir /mnt/dirname** : To create directory Mount Point
  
-  **mount /dev/block_device_name or diskname /mnt/dirname** :To mount the filesystem
  
- **mount | grep /block_device_name or diskname**: To check if the filesystem is mounted
  
- <**" echo /dev/block_device_name or diskname /mnt/dirname ext4 rw 0 0" | sudo tee -a /etc/fstab**>: To make mount be available after the system reboots.
  
