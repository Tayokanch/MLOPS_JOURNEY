# Jenkins Pipelines

- For automating complex software development workflows, especially in CICD, Jenkins Pipeline offers a powerful and versatike solution. Imagine a detailed recipe for building and deploying ypur software. Unlike a simple list of steps, a Pipleline project allows for a structured multi-stage approach with control over execution flow. This transslate to organied workflow where uyou can break down your build process into logical stages like `Compiling`, `Testing`, and `Deployment` for imporved clarity and easier management

- E.g, In the Dockerising stage, you could have a step for building `Docker Image` and pushing it to a container registry

# TYPES OF PIPELINES PROJECT
1.` Scripted Pipeline` : This approach offers the most control and flexibility but rquires some coding knowledge, typically Groovy. The Jenkinsfile allows for defining complex logic and automation tailored to your specific need. The scripted pipelines require writting a complete `Groovy script Jenkinsfile` to define all stages and steps for your workflow.

2. Declarative Pipeline: This uses a simpler human-readable format to define the pipeline. While easier to learn and use, it might not be suitable for hihly complex workflows that require extensive scripting. The syntax is more natural and requiires less coding knowledge than ` Scripted Pipelines`


# Benefits of `Pipelines` over `Freestyle`

- Pipelines are defined in a jenkinsfile configuration file, which are stored alongside your project code. It enabales `Version Control`, `Collaboration Editing`, and `Tracking of Changes`

- Pipelines are resilient by design and can survice unexpected restarts of the jenkins controller, ensuring your worklow doesnt stall due to technical hiccups

- Pipelines can be paused at a specific point, allowing for manual intervention or approval before continuing the build process.

- Pipelines excel at handling complex CI/CD requirements. Features like `forking`, `joinging`, `stages`, `looping`, `parallel execution`, enable efficient orchestration of complex workflows.

- Pipelines plugin allow for custom extension to its domain-specific language, providing flexibity to tailor it to your specifi needs