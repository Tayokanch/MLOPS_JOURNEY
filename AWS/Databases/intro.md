# ☁️ Types of Database Services in AWS

---

# 1️⃣ Self-Managed Database

This is when **you manage everything yourself**.

You install and run your database on:
- Amazon EC2  
- Amazon ECS  
- Amazon EKS  

### ✅ You control:
- Operating System
- Database version
- Patching
- Backups
- Security hardening
- Scaling

### ❌ You are responsible for:
- High availability
- Failover
- Monitoring
- Maintenance

**Used when:**
- You need special DB configuration
- Strict compliance/security requirements
- Custom database extensions

---

# 1a️⃣ Relational Database Service (RDS)

Amazon RDS is a **managed relational database service**.

AWS manages:
- OS patching
- Backups
- Monitoring
- Failover (Multi-AZ)

### Supported engines:
- MySQL
- MariaDB
- PostgreSQL
- Oracle
- SQL Server

**Best for:**
- Web applications
- Backend APIs
- Microservices
- Startup projects

Think of it as:
> AWS manages the database server for you.

---

# 1b️ Amazon Aurora

Amazon Aurora is a **cloud-native relational database built by AWS**.

It is:
- Compatible with MySQL or PostgreSQL
- More scalable than standard RDS
- More fault-tolerant
- Higher performance

### Key Differences from Standard RDS:
- Storage distributed across 3 Availability Zones
- 6 copies of your data automatically
- Faster failover
- Storage auto-scales up to 128TB

**Used for:**
- High-traffic applications
- SaaS platforms
- Enterprise workloads

---

# 1c️ Aurora Serverless v2

Aurora Serverless v2 is Aurora with **automatic compute scaling**.

### Features:
- Fully managed
- Cloud-native
- MySQL & PostgreSQL compatible
- Automatically scales up and down
- Pay for compute only when used
- Storage billed separately
- You still pay for storage even when idle.

**Best for:**
- Unpredictable traffic
- Dev/Test environments
- Event-driven systems
- Startup applications
---

# 1d️ Amazon Redshift

Amazon Redshift is a **SQL Data Warehouse**, not a normal application database.

### Used for:
- Analytics
- Business Intelligence (BI)
- Reporting
- Large-scale data analysis

### Key Features:
- Scales to petabytes
- Columnar storage for fast analytics queries
- Serverless and Provisioned versions available
- Based on PostgreSQL (analytics-optimized)
- Not used for regular web applications.

---

# 2️⃣ NoSQL Databases (Non-Relational)

These databases do not use traditional table structures with strict schemas.

---

## 🔹 DynamoDB

A fully managed key-value and document database.

### Features:
- Extremely fast
- Serverless
- Auto-scaling
- Global replication
- Millisecond latency

**Used for:**
- High-scale web apps
- Gaming systems
- IoT
- Real-time applications

---

## 🔹 Amazon DocumentDB

MongoDB-compatible document database.

**Used for:**
- JSON-style documents
- Customer profiles
- Content management systems
- Semi-structured data

---

## 🔹 Amazon Keyspaces (for Apache Cassandra)

Managed Cassandra-compatible database.

**Used for:**
- Globally distributed systems
- Massive scale workloads
- Write-heavy applications
- Event logging

---

## 🔹 Amazon Neptune

Graph database service.

**Used when relationships matter most.**

Examples:
- Social networks
- Fraud detection
- Recommendation engines
- Knowledge graphs

---

## 🔹 Amazon ElastiCache

In-memory caching service.

Supports:
- Redis
- Memcached

**Used for:**
- Caching expensive queries
- Session storage
- Shopping cart data
- Leaderboards
- Not a primary database. It supports your main database.

---

## 🔹 Amazon OpenSearch Service

Search and analytics engine.

**Used for:**
- Full-text search
- Log analysis
- Application search
- Observability dashboards

Think:
> Google-like search for your application data.

---

## 🔹 Amazon QLDB (Quantum Ledger Database)

Immutable ledger database.

- Tracks all changes
- Changes cannot be deleted
- Cryptographically verifiable

**Used for:**
- Financial records
- Audit trails
- Compliance systems

---

## 🔹 Amazon Timestream

Time-series database.

**Used for:**
- IoT devices
- Monitoring systems
- Sensor data
- Metrics tracking

Optimized for:
- Data that changes over time

---

# 🔥 Quick Summary Table

| Service | Primary Use |
|----------|-------------|
| RDS | Standard relational web app database |
| Aurora | High-performance relational database |
| Aurora Serverless | Auto-scaling relational database |
| Redshift | Data warehouse & analytics |
| DynamoDB | High-scale NoSQL apps |
| DocumentDB | JSON document storage |
| Neptune | Relationship-heavy data |
| ElastiCache | Caching layer |
| OpenSearch | Search functionality |
| QLDB | Immutable ledger |
| Timestream | Time-series data |