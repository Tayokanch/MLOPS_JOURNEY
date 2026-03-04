## Types of Database Services in AWS

1. `Self-Managed Database`: This is a kind of database we manage by ourselves and we have full control over it E.g running a Database on an **`EC2`** **`ECS`** **`EKS`**. Its mainly used when we need to have specific software or secuirty requirements


1a. `Relational Database Service (RDS)`: These are the services we need when we ant to use a relational Database like **MySql**, **MariaDB**, **PostgreSQL**, **Oracle Instance DB**

1b. `Amazon Aurora RDS` - AWS took **PostgresQL** abd **MySql** from the main RDS flavors, made some twick on how they run, then turned them to a managed cloud native DB Service
    - They have Higher Capacity and Higher Performance
    - They Grow more easily then the main RDS service
    - However, In terms of speed, they still dont match the non-SQL DB

1c. `Amazon Aurora Serverless V2`: These are Databases we only as per when used

    - They are a Managed Service for Databases
    - Cloud Native
    - They are of 2 flavors **MySql** **Postgresql** 
    - Higher Capacity and Higher Performance
    - It can be scaled up and scaled down
    - Pay a little for storage, but not compute when we are not using the DB

1d. `AWS RedShift`: This is also a structure(SQL) data storaged managed my SQL. Its a SQL data **Data Warehouse** in AWS  for storing a large or a whole Glob of data for reeporting purposes.
    - AWS takes care of the OS
    - We are responsible for how it run
    - It comes with one flavor (Postgresql)
    - It can scale to **Petabyte**
    - It has both **Server** and **Serverless** versions

---

2. `NoSQL Database (Non Relational)`

- `DynamoDB`: This is a Lightning-fast king of key-Value at AWS

- `Amazon DocumentDB (Mongodb compaticility)`: This is used when we want to store data and retrieve like essays, customer profiles, documents, things that are more like a collection of data with a hierarchy. Here the data has some kind of loose indexable relationship.

- `Amazon Keyspaces(for Apache Casandra)`: This is a distrubuted global scale database that allows you to run unstructured data that is kind of a little bit more semi-structured, and can be run distrubted accross the entire planet

- `AWS Neptune`: This is a graph database. 
  - It is used when we need a database that will detect relationships, like normal relationships versus variability in relationships btw the data.
  - It is used for things like **social Networking**, **Fraud Detection**

- `Amazon ElastiCache`: This is a service that offers 2 flavors of in-memory databse **MemChached** and **Redis**.
  - This is kind of DB we use when we want to cache expensive data queries, expensive database results, somewhere where your application can get it really fast, or if we're keeping track of each user's session data or each user's cart.

- `Amazon OpenSearch`: This is the database use for indexing and then search through a bunch of information, but you want to do it like a Google search. This service is used when **Search** is the most important thing

- `Amazon Quantum Ledger`: This create a record of what we change in the DB and the change can't be undone

- `Amazon Timestream`: This are the DB used for collecting Data from IOT devices