## Cloud Computing

- `Cloud Computing` is the on-demand delivery of IT services / Resources, particularly **compute power**, **application hosting**, **database application**, **networking** etc


## AWS
- `What is AWS`: AWS offcers IT Services like:
  - `compute`: 
  - `storage`: For data related service needs
  - `Networking and Content Delivery`: This is where we get internet access, and this how we control things like firewalls and security etc
  - `Database`: This could be a relational or non relational DB
  - `security, identity, and complaiance`,
  - `management and Governance`, 
  - `application integration`,
  - `App and Data Migration`


## THREE WAYS TO INTERACT WITH AWS

1. Through the `Management Console`
2. Through the `AWS CLI`
3. Through the  `AWS SDK`


## Benefits of Cloud
-` Trade Upfront Expense for Variable Expense`: Pay for what you use and give back when you don't need it
- Stop Focusing on Data Centers
- Stop Guessing Capacity ( Limited Scalability)
- Benefit From Massive Economic of Scale
- Increase Peovision Spead and Business Agility
- Global Deployments Options(with your app) in Minutes


## Economic Models of AWS

- The way **Billings** and **Economics** work inside of AWS

  1. `Free Tier`: Amazon has a free trier inside the AWS, when we sign up for an account, there are a bunch of services that are free forever. There are some services that are free for the **12 months** E.G `AWS EC2 (750 hrs)`, `AWS S3 (5GB)` `AWS RDS (750 hrs)`, `AWS DynamoDB (25GB)`, `AWS Lambda (1 million)`.

  2. `On-Demand`: This is knowm as the on-demand model or pay-as-you-go. which basically says if you ask for a `virtual machine`, `storage`, or `network` of a certain size, you're going to pay for that size. 

  3. `Reservations`: This is like having a contracts with AWS on a particular services / Resources. This comes with a deep pricing discount, however, we can cancel the contract until it expires

  4. `Volume Discounts`: The more the volume of the services / Resource we use the lower the cost


## Cloud Design Principles

1. `Design for Failure`: **Designing for a Single Point of Failure**  is about increasing of Resiliency and Auto-Recovery of our systems as we build them. We must be intentional about failure and we must assumed that something is going to fail and add a solution / redundancy if we can.

2. `Decouple Components:`
   
This is about separating components so that when one component goes down, it does not bring down another component. Components should communicate asynchronously where possible.

**Example:**
   - Order Service sends messages to SQS(AWS Simple Queue Service)
   - Payment Service reads from the SQS
   - If Payment Service fails, orders are stored safely and processed later


3. `Implement Elasticity:`

This is about automatically scaling AWS resources up and down based on demand, so we achieve better performance and lower cost.

**Example:**
   - Auto Scaling Group increases EC2 instances during peak traffic
   - Scales down when traffic is low
   - You only pay for what you use


4. `Think Parallel:`

This is about doing work at the same time using multiple AWS resources, instead of doing everything sequentially with one resource.

**Example:**

   - Instead of 1 EC2 running a job for 36 hours
   - Use 3 EC2 instances running the job in parallel
   - Job completes in 12 hours