- du -sh filename : This is used to determine the size of a file

**Archiving Files**
-Tar : This is use for grouping multiple files or directories into a single file. Hence, its especially used for archiving data

  - tar -czvf give_name.tar.gz -C /home/bob file1.txt file2.txt file3.txt : This how archive and compress files at once
  
  - tar -czvf caleston-code.tar.gz -C ~ folder_name : This will archieve the an entire folder and its content

  - tar -tf home/file_name.tar : This is used to SEE / VIEW the contents of the tarbox
  
  - tar -xf filename.tar : This is use to EXTRACT the contents from the tarbox

  - tar -zcf tarbox_name.tar.gz file_to_archive1 file_to_archive2 : This is use to COMPRESS the  to reduce the tarbox size
  
**Compressing Files**
- bzip2 : 
  - bzip2 file_name.extention
  - du -sh file_name.extention.bz2
  
- gzip
  - gzip file_name.extention
  - du -sh file_name.extention.gz

- xz
  - xz file_name.extention
  - du -sh file_name.extention.xz

**Unompress Files**
- bunzip2 : 
  - bunzip2 file_name.extention.bz
  - du -sh file_name.extention
  
- gunzip
  - gunzip file_name.extention.gz
  - du -sh file_name.extention

- unxz
  - unxz file_name.extention.xz
  - du -sh file_name.extention

**How to Read Files without Uncompressing Them**
- zcat
  - zct filename.extention.bz2