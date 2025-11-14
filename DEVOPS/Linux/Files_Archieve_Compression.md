-<**du -sh filename**> : This is used to determine the size of a file

**Archiving Files**
- *Tar* : This is use for grouping multiple files or directories into a single file. Hence, its especially used for archiving data

  
  - <**tar -czvf give_name.tar.gz -C /home/bob file1.txt file2.txt file3.txt**> : This how `Archive` and `Compress`files at once
  
 - <**tar -xzvf screenshot.tar.gz**>: To `Extract` and `Decompress` files

/home/tayo/Repos/MLOPS_JOURNEY/DEVOPS/Shell_Script/Debian_reactapp.sh

  
**Compressing Files**

- *bzip2* : 
  - <**bzip2 file_name.extention**>
  -<**du -sh file_name.extention.bz2**>
  
-* gzip*
  - <**gzip file_name.extention**>
  - <**du -sh file_name.extention.gz**>

- xz
  - <**xz file_name.extention**>
  - <**du -sh file_name.extention.xz**>

**Uncompress Files**

- *bunzip2* : 
  - <**bunzip2 file_name.extention.bz**>
  - <**du -sh file_name.extention**>
  
- *gunzip*
  - <**gunzip file_name.extention.gz**>
  - <**du -sh file_name.extention**>
  
- *unxz*
  - <**unxz file_name.extention.xz**>
  -<** du -sh file_name.extention**>

**How to Read Files without Uncompressing Them**

- *zcat*
  - <**zct filename.extention.bz2**>