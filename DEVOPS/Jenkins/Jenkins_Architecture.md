## JENKINS ARCHITECTURE

- Jenkins leverages a distributed architecture to manage your CI/CD pipepline efficiently.This structure offer scalability and power, allowing you to automate complex workflows across multiple machines.

# COMPONENTS IN JENKINS ARCHITECTURE

1. `Jenkins Controller`: This is the central hub of Jenkins setup, often reffered to as the `Jenkins server`, It is formally known as a `Master Node`. It act as a mastermind coordinating the entire CI/CD process. It has various responsibilities like:

- Managements Tasks such as user authentication and authorization are solely done on the controller.

- It's used for  `Job Management`

- Providing Web Interface for configuration

- Setting up plugins