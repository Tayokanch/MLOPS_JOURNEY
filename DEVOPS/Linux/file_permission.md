  - xxx-xxx-xxx
  - The **first XXX** : This represent the Owner/ user Permission (u)
  - the **second XXX** : This represent the Group permission(g)
  - the **last XXX** : This represent other (O) 
  
* File Bits
  - **r** : read. This has an Octal value of 4
  - **w** : write. This has an Octal value of 2
  - **e** : execute. This has an Octal value of 1
  - **-** : No permission . This an the Octal value of 0


**MODIFYING FILE PERMISSIONS**
- chmod *permissions* file_name
  
- **chomod u+rwx file_name** : This is modifying the permission of the user(u)
  
- **chmod ugo+r-x file_name** : This is modifying the permission of the user, group, and others (ugo)
  
- **chmod o-rwx file_name** : This is to remove all access for others
  
- **chmod u+rwx, g+r-x, o-rwx file_name** :This full access to the owner, add read, remove execute for group, and no access for others.

* USING THE NUMERIC MODE FOR FILE PERMISSION
  - chmod permissions file_name
  
  - **chmod 777 file_name** : full access to the Owner, group, and others.
  - **chmod 55 file_name**: Provide Read and execute access to Owners, groups and others
  - **chmod 660** - Provides Read and Write access for Owner and Group. No access for Others
  - **chmod 750 file_name** : Provides full access for Owner, read and execute for group and no access for others.

* HOW TO CHANGE OWNERSHIP OF GROUP
  - **chown owner:group file**
  - **chown bob:developer file_name** : Changes owner to "bob" and group-name to "developer"
  - **chown bob file_name** - Changes just the owner of the file to bob. Group-name unchanged.
  - **chgrp andriod file_name** : Changes the group for the file_name to the group called "andriod".