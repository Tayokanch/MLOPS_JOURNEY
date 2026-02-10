# Identity and Access Management (IAM)

- Starting off with steps needed to create an **AWS Account**
  - when we create an AWS account, we would have to provide **3 pieces of information**, an `Email`, `Name`, A `Credit Card`
  
  - When we create an account, `one user` will automatically get created for us, and thats the `root user`. This is the most powerful user our AWS account and can perform any action on the it wants


# How To Give Access, Authenticate and Limit Access to other users on an AWS account

- Lets say an AWS account was create for xyz company and they have a new employee that needs to be added as a user to thier AWS account, give them access to some resources and restrict them from having access to some resources. This is where `Identity and Access Management (IAM)` comes to play

- `IAM` is the service that's responsible for Indentity and Access Management, allowing users to connect and be able to perform a variety of different operation within AWS

- `IAM` manages who has access to what in our AWS account 

- `IAM` handles who is authenticated and what are they authorized to do 


## THREE TYPES OF IDENTIES IN AWS

- `Users`
- `Groups`
- `Roles`


## IAM POLICIES
- This defines what resources a user/group/role has access to and what actions they can perfom on them.
---

- `Users`
  
## How To give access to a new USER on an AWS ACCOUNT

- we create a user account with an `IAM` so they can have access to AWS and subset of services. By default this user deosn't have access to any resources on our AWS ACCOUNT unless we explicitly give them permission to be able to work with those resources using (`IAM Policies`)

- We must follow the rules of least privildge i.e only give the bare minimum access to what your users need.



## Example of an IAM Policies

```json

"Version": "2012-10-17",
"Statement": [
{
"Sid": "SecondStatement", //StatementID: This is for optional Identifier for our policy statment. We could use a Descriptive Statement instead
"Effect": "Allow", // This allows the user to do something
"Action": "ec2:*", // This is what we are allowing the user to do here we are allowing the user to do any EC2 related actions
"Resource": "*" // We are allowing the user to perform any EC2 related actions on any Resource within AWS
},

{
"Sid": "ThirdStatement",
"Effect": "Allow",
"Action": [
    "s3:List*", // The user is allow to perform a list i.e list out all the things we have inside the s3
    "s3:Get*" // // The user is allow to Retrieve all the things we have in the s3
],
"Resource": [
    "arn:aws:s3:::bucket1", // This is the s3 Bucket the user should be able to perform those actions on
    "arn:aws:s3:::bucket1/*"
]
}

]


```

`Note`: We create a User, Create an IAM Policies for them and then attach the Iam Policies with the user
---

- `Groups`: This is a collection of `IAM users`. It is used to group user with similiar policies together instead assgning individual policies to each users
---

- `Roles`

Just like we can assign a Policy to a USER, we can also assign a Policy to a ROLE. The purpose of a ROLE is that a role allows a user to assume it i.e a USER can temporarily act like that role and when a user assumes a role, they inherit the all the permissions on the role. In summary, Roles are users to borrow permission for a short period of time, Therefore, `IAM Roles` are recommended when we need to grant access to a service on a temporary basis


## Multi-Factor Authentication (MFA)
- This is used to prevent our AWS account from being hacked incase our email or password get leaked. It add extra security layer ontop our account by sending an authentication codes to our email before we can have access to our AWS account

- Another thing we need to note is that MFA is enabled per-user basis. It's recommanded to enable MFA for all users manually