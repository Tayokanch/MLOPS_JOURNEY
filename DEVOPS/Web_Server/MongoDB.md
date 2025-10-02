- First step is to create a MongoDB Repo by running this command
- sudo tee /etc/yum.repos.d/mongodb-org-6.0.repo <<EOF
[mongodb-org-6.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/9/mongodb-org/6.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-6.0.asc
EOF
- <**sudo yum clean all**>
- <**sudo yum makecache**>
- 
- <**yum install mongodb-org**> : To install the package Manager system

- <**systemctl start mongod**>: To start the Mongodb Service

- <**systemctl status mongod**>: To check the status of Mongodb Service

- <**cat /var/log/mongodb/mongod.log**>: This is where the logs are saved

- <**/etc/mongod.conf**>: This is the file to change the **Port** and **IP**

*HOW TO CONNECT TO THE MongoDB Database*
- <**mongo**> : This allows use to enter the MongoDB SHELL which allows us to query and modify data
- <**show dbs**> : To display list of Databases
  
- <**use Database_name**>: To create a new Database

- <**db**>: This is to determine which database we are currently in

- <**db.createCollection("collection_name")**>: This is to create a collection e.g users, products

- <**show collections**> : To show the list of collections in a particular db

- db.collection_name.insert({
    "name":"tayo",
    "age": 45
}) : To insert write inside a collection

- <**db.collection_name.find()**>: To retrieve Data from the Database