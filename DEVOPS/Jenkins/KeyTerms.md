# JENKINS KEY TERMS

- `Jobs`: Jobs are building blocks of your pipeline. Each jobs defines a specific task like compiling codes, running test, or deploying to a specific environment. 

- `Build`: Each execution of a job is considered a build Jenkins maintain a build history, allowing you to track past runs which could either be successful or failed for troubleshooting purposes. 

- `Freestyle Project`: Jenkins has a Freestyle Project which is the default project type in Jenkins. it offers a flexible way to define build jobs using various steps and configuration

- `Pipelines` : These are automated workflows that orchestrate jos from code build to deployment. These are defined a code in a Jenkinsfile, enabling version control and collaboration.

- `Stages`: This is a process of grouping `Jobs` into phases like *Build*, *Test*, *Deploy* for clarity.

- `Nodes`: These are the Machine where Jenkins executes jobs. You can have a single controller node often called the Jenkins Controller coordinating builds or have a distributed task accross multiple working nodes to increased performance.

 `Plugins`: These are extensions that expands Jenkins functionality.They allow seamless integration with various tools and technologies used throughout your development lifecycle. It is also used for connecting to `Testing Framework` or a `Cloud Platforms`