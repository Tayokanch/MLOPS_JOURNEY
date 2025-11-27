# Jenkins Pipelines

- For automating complex software development workflows, especially in CICD, Jenkins Pipeline offers a powerful and versatike solution. Imagine a detailed recipe for building and deploying ypur software. Unlike a simple list of steps, a Pipleline project allows for a structured multi-stage approach with contro over execution flow. This transslate to organied workflow where uyou can break down your build process into logical stages like `Compiling`, `Testing`, and `Deployment` for imporved clarity and easier management

- E.g, In the Dockerising stage, you could have a step for building `Docker Image` and pushing it to a container registry

# TYPES OF PIPELINES PROJECT
1. Scripted Pipline 
2. Declarative Pipeline

# Benefits of `Pipelines` over `Freestyle`
- Pipelines are defined in a jenkinsfile configuration file, which are stored alongside your project code. It enabales `Version Control`, `Collaboration Editing`, and `Tracking of Changes`

- Pipelines are resilient by design and can survice unexpected restarts of the jenkins controller, ensuring your worklow doesnt stall due to technical hiccups

- Pipelines can be paused at a specific point, allowing for manual intervention or approval before continuing the build process.

- Pipelines excel at handling complex CI/CD requirements. Features like `forking`, `joinging`, `stages`, `looping`, `parallel execution`, enable efficient orchestration of complex workflows.

- Pipelines plugin allow for custom extension to its domain-specific language, providing flexibity to tailor it to your specifi needs