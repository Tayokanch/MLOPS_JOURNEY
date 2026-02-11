# AWS SECURITY SERVICES

## Prevention Service

`Prevention Service`: These are the services that prevent various types of attacks or vulnerabilities E.G:
  
   1. `AWS Web Application Firewall (WAF)`: These are services that protect `HTTP-based` applications. Working with `WAF`, we need to dfine a set of rules, these are called `Web ACL` and they consists of 3 different things:
        1. The Resources to Monitor e.g `Amazon API Gateway`
        2. Rules (The Inspection Criteria) e.g check the `IP of request`, `Country of Request`, `String or Regex Match of Request Size of a Request`, `Detection of malicious SQL code`
        3. Action (Allow, Block, count, CAPTCHA)
   

  2. `AWS Shield`:

    A common attcaks that we could experience is call `DDoS Attack`. This attack is when a target is flooded with a number of request to make a server or application no longer able to respond, thus making it unavialble to our users. Its about flooding a server or an application by overwhelming it. This is where `AWS Shield Service` come in  handy, it **Detects** and **Mitigate** sophisticated `distributed denial of service(DDoS)` attacks

  3. `AWS Network Firewall `: This is a Firewall that's used to protect VPCs. It determines what traffic is allowed to enter and leave a VPC. This also stateful firewall i.e


## Detection Services

`Detection Services`: These services are all about detecting issues, finding bugs, finding vulnerabilities and things of that nature within our **AWS environment**. Under this we have services like:
  
  1. `AWS Inspector`: 
      - This scans workloads running on AWS for vulnerabilities and undesired network exposures. So if we have an `EC2 instances` or `ECR Images` or `AWS Lambda` running, its going scan all this workloads for any vulnerabilities. 
  
      - The great part is that it will automatically discover all Resources and Services where have our workloads running without explicitly telling it to scan them.
  
      - When a vulnerability is found, `AWS inspector` is actually going to produce a report with all of the findings

## AWS GuardDuty Service

`GuardDuty Service`: 
- This is a security service that identifies threats by continuously monitoring the activities our `AWS Infrastcutre`. 
  
- Its a very intelligent service that utilizes machine  to detect our usual patterns and behaviors of our AWS account and if it ever detect any unusual patterns or abnormal, it will then notify us of what its able to find

## AWS Detective

`Amazon Detective`:
 - This grabs the logs and finding from a couple of other different services like `GuardDuty findings`, `CloudTrail Log`, and `VPC flow logs`
  
 - It takes all these findings and logs listed above and use machine learning to create advanced visualization and interactive Dashbaord to make it easier to troubleshoot the root cause any issues.

## AWS CONFIG

`AWS Config`: This tracks and audit the configuration of an AWS resource .i.e any configuration changes we make to any resources with AWS will be logged in the `AWS Config`.


## AWS SECURITY HUB

`AWS security Hub`: Takes findings from **Amazon Inspector** and **Amazon GuardDuty** and a few other locations. And going to centralize all of the security alerts so that we can see it in a sinle pabe of glass instead of having to go into two different services


## CloudTrail

`CloudTrail`: This tracks users activity with an AWS account. Anytime a user perfoms actions within AWS, an event is logged in Cloudtrail

## Amazon Security Late

`Amazon Security Late`: This service collect security logs and events from multiple different sources and aggregate those logs in a central location

## AWS Macie

`AWS Macie`: This service uses pattern matching and machine learning to automatically discover sensitive Data. Example, `Macie` can generate an invemtory report of **S3 buckets** and scan objects for senstive Data