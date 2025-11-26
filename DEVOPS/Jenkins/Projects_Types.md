# Types of Jenkins Projects

- Projects Types in Jenkins is also known as `JOB`, to automate different workflows. Here are the main ones.

1. Freestyle Project: This is the most basic and flexible option. it allows you to define custom build steps and configurations for any pojects, making it suitable for simple or unique build

2. Pipeline Project: This is a powerful approach, uses a specific code to define the entire build pipeline. It includes stages, steps, and conditions for complex build processes and continuos delivery workflow.

3. Nultibranch Pipeline: This build upon the pipeline projects by allowing you to manage, build from muiltiple branches in a single code repository. Its ideal for handling pojects with frequent branching and developement activity.

4. Maven Project: This streamlines builing projects that use `Maven`, a popular build automation tool for Java projects. Jenkins automatically detects and executes `Maven commands` based on the projects pom.xml file. 

5. Multi-configuration Project: This let you run same build process with different configurations. You can define various combinations of parameters and run test for each configuration.

6. Organazation Folders: These aint projects types themselves, but rather a way to organzise your jenkins project