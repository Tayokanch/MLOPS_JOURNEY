# WHAT IS JENKINS

- Jenkins is an open-source automation server that accelerates sofware development. 
- It orchestrates the entire software delivery pipeline from `building` and `testing` to `deployment`
- As a continuous integration tool, jenkins swiftly identifies code issues, enabaling faster development and higher-quality software

# How Jenkins Works?

- Developer regularly push the code to a Git Repo.

- Jenkins keeps an eyes on this repository. Whenever there's a change, it automatically pulls or clones the repository, and its going to either build or compile the code.

- if the compilation fails, Jenkins it going to alert the developer back. 

- The Developer is going to make code changes and again pushes them to the Git.

- Jenkins again detects these chnages. Its going to again clone the updated repository, and its going to either `build` or `compile` the code.

- if the build succeeds and any other stages which are available in the jenkins pipelines are succesfully completed, Jenkins will automatically deploy the code to the required target. It could be a `Kubernetes`, `Production Environment  or a `Simple Amazon EC2 Instance`.

- And again the `Developer is going to get a notification about the successful deployment. This loop keeps you code fresh with minimal manual intervention, ensuring smooth and automated development