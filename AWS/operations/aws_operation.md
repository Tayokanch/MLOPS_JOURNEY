# Methods of Deploying and Opering Services in AWS

 - `AWS Management Console`
  
 - `AWS CLI` : With this one we need to download the CLi on our machine, and use the documentation to navigate what we want or we do **aws help** or if we are working with a service, we could do **aws s3 help**
  
 - `SDK`: This mostly by developer who want to integrate **AWS service** to there application. 
   - Firstly we need to install `AWS SDK` for the project we are working on e.g Javascript SDK for Nodejs Application / The_Service we want to use E.g S3. Then create the Service
   - Example, creating an `S3 Bucket` in a `NodeJS project`. 
  
```js
import {
    s3Client,
    CreateBucketCommand,
    ListBucketsCommand
} from "@aws-sdk/client-s3";

const client = new S3Client({region: "us-east-1"});

const bucketConfig = {
    Bucket: "tayo-demo-s3Bucket",
    CreateBucketCommand:{
        LocationConstaint: "us-east-2",
    },
};

const command = new CreateBucketCommand(bucketConfig);
Const response = await client.send(command);
const listBuckets = new ListBucketsCommand({});
const listResponse = await client.send(listBuckets);

console.log(listResponse);

```