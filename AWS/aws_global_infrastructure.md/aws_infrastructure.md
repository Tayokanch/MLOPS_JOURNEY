# AWS Global Infrastructure

1. `Region` : 
   -  *In Aws Region* is a geographic location where resources can be deployed.
   -  Each Region is designed to be isolated from other regions, so if one region goes down it doesnt affect other regions
   -  All regions are not the same 
   -  Not all Services are available in all regions
   -  Select Region close to our customer when deploying on aws for low latency
   -  Cost of services varies from region to region

2. `Availability Zone`: 
   - Each `Region` has multiple `Availability Zone`.
   - An **AZ** is one or more discrete **Data Center** with power, networking, and connectiving in an `AWS region`
   - Availibility zones provide reduncancy with a region E.G Lets say Deployed an Application within `Region Australia` and we Chose to deploy it in the `Australia Region Availibility Zone 1`, if `Availibity zone 1` goes down all or our application would go down immediately causing downtime.
   - Instead, what we can do it do deploy our application into multiple `Availibity Zones` accros a `Region`, so if we loose one **AZ**, the other **AZ** will still be available


3. `Global Content Delivery & Edge Locations`:
   - Lets say we deploy a `Web Server` onto the `North American regions`, when a customer in the North America sends a request, its going to be send a request to that web server with no issues, However, as soon as we start to experience growth in a different region like `Nigeria`. So if they want to access our Web Application, they would have to send a request all the way across the globe to the `North American region` where our Web Application is Deployed which would cause a `HIGH LATENCY` leading to a poor user experience.
  
   - So with `Global Content Delivery & Edge Locations`, AWS has created these smaller **`edge locations`** which predominantly act as *(Content Delivery Network Solutions CDNs)*. So if we have **web files**, **media files**, stored on a web server, we can push them out to small edge locations, which kind of act as a `mini regions`.

  - So what happen is that when a customer sends a request from `North America` which is the region where our Application is deployed, they get routed to the `original Web Server` which the `North America Region`, However, when customer accross the globe other than the `North America` send a request to our *Web Application*, they get routed to their local CNDs, i.e any `AWS CDNs` close to them so their request wont need to travel accross the globe.

4. `Local Zones`: Local Zone sounds familiar to Edge Locations but they are different
   - Local Zones are extentions of an AWS Regions. Let's say we have a `Parent AWS Region` like **New York**, we are going to have these **local zones** close to **New York**, which atc as extensions that are going to what will be placed in major cities somewhat close to the **New York Region**.
   - These Local Zones allow us to use select AWS services, like compute, and storage close to end-users. This helps us get our services close to our customer as much as possible 