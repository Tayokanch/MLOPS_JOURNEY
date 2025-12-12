# VOLUME MAPPING
- `Volume Mapping`: This is how Data is Persisted in a Docker container E.G
- lets say we were running a MySQL container. When databases and tables are created, the data files are stored in location` /var/lib/mysql` in the `docker isolated file system`
- lets assume we want to delete the mysql container, all data stored in it would be deleted along side the container
- To persisted data, We need to map directory directory outside the conatiner on the DOcker host to a directory inside the container E.G `docker run -v /tayoVM/opt/datadir:/var/lib/mysql mmysql`