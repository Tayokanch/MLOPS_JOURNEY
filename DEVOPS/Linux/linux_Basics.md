Shell 

Linux Shell - This is the text based command line that helps you run linux to interact with operating systems
SHELL - This is always used in facilitating communication btw USER and Operating system

SHELL TYPES
* Bourne Shell
* C Shell
* Z Shell
* Bourne again Shell (Bash)

**DIRECTORY**
- when you login to SHELL the first directory we see is the /home 
- The home directory is unique to user
- The home directory allows user to store or retrieve their personal data in a form of files and directory
- The Home Directory is represented by [~]$:


BASIC COMMANDS
* echo - this is used for printing environment variable, its also used     when you want to print out script
* ls - To list out Directory
* cd - To change Directory
* pwd - This is to print the Present Working Directory
* mkdir - This is to create a new Directory
* ; - This is used to run MULTIPLE COMMANDS at works e.g cd my_project ; mkdir project_server ; mkdir project_client
* mkdir -p - This is used for creating DIRECTORY TREE e.g /Africa/Nigeria/Lagos
* rm -r /directory_name - To remove DIRECTORY & ALL ITS CONTENT
* cp -r /directory_name - To COPY DIRECTORY to another DIRECTORY
  
COMMANDS FOR FILES
* touch filename.txt - to create a file (no contents)
* cat > filename.txt - to add contents to a file, then press( CTLR D) to exist the file
* cat filename.txt - To View Contents of file
* cp file1.txt file2.txt - To Copy the Copy / Change the Content in file2 - file1

**BASH ENVIRONMENT VARIABLE**
* export VARIABLE_NAME = VALUE : This is for saving value inside the env
* echo $VARIABLE_NAME = To print the value

**How to find files**
- locate file_name.extention
- Grep text_to_find file_name.extention: This is used for searching or finding patern within files
- grep -i text_to_find file_name.extention: This is used for searching or finding patern  without considering the CASE
- grep -w text_to_find file_name.extention : This is used for search for the exact pattern 
- grep -r "text_to_find" /directory : This is use to find / search for pattern in a particular dir