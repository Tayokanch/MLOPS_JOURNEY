*LOGICAL VOLUME MANAGER LVM*
LVM allows grouping of multiple physical volumes which are hard disks or partitions into a volume group. From this volume group, you can carve out logical volumes.
  
**Benefits of using LVM**
- LVM allows the logical volumes to be resized dynamically as long as there is sufficient space in the volume group. 
- On the systems such as our laptops, you can have the file systems such as  /home/Var/TMP

*How to Use LVM**
- <**apt-get install lvm2**> : To install LVM
  
- <**pvcreate /dev/block_name**> : This is to create a physical volume
  
- <**vgcreate volume_group_name/dev/blockname**>:  This is to create a volume group
  
- <**pvdispaly**>: To see the details of physical volumes
  
- <**lvcreate -L size(1G) -n logical_vol_name volume_group_name**> : This is to create a logical volume
- <**lvs**>: To list a volume
  
- <**lvextend -L size(+500M) /dev/volume_group_name/Logical_volume_name**> :  To extend the size of the logical volume.
  
- <**mkfs.ext4 /dev/volume_group_name/logical_volum**>: This is to create a file system on the logical Volume
  
- <**mount -t ext4 /dev/volume_group_name/logical_volume /mnt/mount_Point**>: Create an ext4 file system and mount
  
- <**df -hP /mnt/mount_point**>: This is check the size of the volume
  
- <**sudo lvresize -L size(+500M) -n  /dev/mapper/volume_group_name-logical_volume**> : This i to resize the volume.

- <**sudo resize2fs  /dev/mapper/caleston_vg-data**>