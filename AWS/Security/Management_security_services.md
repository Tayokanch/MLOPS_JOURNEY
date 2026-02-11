# AWS MANAGEMENT SECURITY SERVICES

- `Firewall Manager`: This is a security management service that allows us to centrally configure and manage firewall rules accross all our **AWS Accounts** E.G
  
  - when we have  AWS security resources e.g `AWS Shield`, `AWS WAF` `AWS Network Firewall` enabled on an **AWS account**, each of these resources would require configuration and specific rules and policies that we have to define so as to protect this AWS Account. If we create another **Aws Account**, we would have to enable, configure all those same resources with same rules we have on the other AWS account. So, if we have alot of shared policies across both of these accounts or across all of our account, instead of managing them independently we can make use of the `AWS Firewall Manager`


- `Resource Access Manager`: This helps us to securely share resources accross AWS Accounts, and organizational units i.e:
  
  - We could create a resource e.g `a private subnet` in **AWS account, 1**, and then have it share amongest  **AWS account 2** and  **AWS account 3**.

- `AWS Cognito`: This helps implement customer indentity and access management for mobile and web applications i.e
  -  it will help us `signup` and `login` functionality without social authentication of any app.
  -  Cognito manages all user credentials
-  

- `IAM`: Identity Access Management is all about managing access to **users**, **groups** and **roles**. Policies are also defined on IAM to determine what are **users**, **groups** or **roles** have access to
- IAM is not only responsible for who's authenticated but also what are they authorized to do


- `IAM Identity Center`: This allows us to manage **sign-in security** for all users in a central place, and you can grant users access to a  **mulitple AWS account**
  -  Working with **mulitple AWS account**, would we have to manage all users independently on each the account and this can be problematic especially when we want some users to have access multiple accounts, this is where *IAM Identity Center* come in handy.

- `AWS Secrets Manager`: This Service is used for storing and Managing all the our Secret / Credentials needed for our application to run. This is basically the production grade of our **.env file**
  
  -  With *AWS Secrets Manager* our application can dynamically pull the secrets from the Secrets Manager
  -  With *AWS Secrets Manager*, we can configure an automatic rotation schedule for pur **secrets** because Long-term secrets are more vulnerable to being compromised.


- `AWS Certificate Manager (ACM)`: This handles the complexity of creating, storing, and renewing public and private certificate that can be used to protect AWS websites and services. So we can use it to send **encrypted Data** to `Elastic Load Balacing`, `CloudFront`, `API Gateway` and a variety of different Services, so we don't have to manage those certificates ourselves.


- `AWS Private Certificate Authority`: This is used to create a private *Certificate Authority* to generate or manage private certificate within an organization. Just like we have  **Let’s Encrypt** a public CA. *AWS Private Certificate Authority* create a Private CA for a users or Organizations to let them manage and their own certificate. This could be use for on-prem or cloud.
  ## Note:
    - This service does not generate *publicly trusted certificates*, So if a user tries to connect to one of the resources running on our *AWS account*, they will get a warning and they'll have to explicitly trust the certificate.
  
    - This servive is meant for *AWS internal Resources*


- `Key Management Service (KMS)`: This is a service that allows you to manage all of your crptographic keys.
  
  - When we are working with sensitive information e.g health and Financial records, we dont want to save them in a plain text. Instead, we want to encrypt it. So we make use of a *cryptographic key* that will **encrypt the data** and to **decrypt the data** we would have to use the same *cryptographic key*. For handling the encryption and decryption process, we can manage then ourselve or use a service like  `AWS Key Management Service (KMS)`
  - it also provides granular control over who has access to the keys and also enbales automatic key rotation as well
  
    

- `Cloud Hardware Security Module (HSM)`: When it comes to managing cryptographic keys like we covered in `KMS service`, what usually happens is you'll end up storing all our crypographic keys in a variety of different server. Our keys would spread accross all this different server and may be a litttle bit difficult to keep track of them, and may potentially open the door for somebofy to actually steal one of our keys, or end up in the wrong hands. To avoid doing that, we what organization sometime use is a tool call `Cloud HSM`.
  
    **Cloud HSM** is a place where we can securely store all of our cryptographic keys and so anytime we need to perform a cryptographic operation like encrypting or decrypting, we send a request to the `Cloud HSM`, and thats going to perform the Encryption or Eecrption process. And since all of our keys are stored in one single device, its a little bit more secure, and easier to manage because we know what they are.