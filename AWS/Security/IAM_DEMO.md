



## How To Create a Role

- Go to the `IAM` on the AWS Management console
- Click on `Roles` and then click on `create role`
- select the `AWS account` type, then click on `Next`, then click on `Next`
- Give the role a `name`, scroll down and  `create the role`


## How To Assume a Role to a user / group

- Copy the name of the `Role` we just created
  
- Click on `Users` or `User Groups` depending if we are assigning the role to a user or a group

- In the case of a User, Select `Users` on the Console Management, Click on the `Particular username` we want to assume the role to

- Then select the `Add permission` drop down button, then click `create inline policy`

- In the **Create Policy** page: 

  - for Service, Click on `Choose a service`, Search for `sts` and select it
  
  - for Actions, Search for `assumeRole` and select it 
  
  - for Resources, click on `ARN`, and paste the `role-name` in the `Role name with path` input and click the `Add` button, click on `Review policy`

  - Then give the `policy a name` and click `Create policy`
  
  - Go back to `Roles` on the Console Management, Click on the 
  `Role-name` we want to assume, then copy link below `Link to swtich roles in the console`

- This `link` is what the user who has been assign to this role would paste on their browser and automatically get the role that has been assumed for them