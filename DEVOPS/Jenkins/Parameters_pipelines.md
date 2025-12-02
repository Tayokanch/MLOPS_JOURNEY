# Parameterized Pipelines
- Parameterized build allows you to  create flexible and customizable build jobs by defining parameters that can be passed when triggerring a build. These parameters can be used to make your builds more dynamic and versatile.


# How to configure a PARAMETRISED PIPELINE
- Inside the particular pipeline, navigate to `General`
- check / Tick `This project is Parameterized`
- Give the Parameter a `NAME` and `VALUE`
- NOTE We can create as many `PARAMETER` as we want for a pipeline
- After creatiing these Paramters, we go to the `Jenkinsfile`
- Wherever we want to use this parameter in the we declare the name of the parameter by `${params.name_of_parameter}` 

# Usefulness of a Parameterized Jenkins Pipeline

## A Parameterized Pipeline allows you to run the same Jenkins job with different inputs, making your pipeline dynamic, flexible, and reusable. Instead of creating multiple similar jobs, you can use parameters to control how the pipeline behaves at runtime.

1. Build or deploy from different branches.
    - `USE CASE` Trigger the pipeline for main, develop, feature-x, etc.
  
2. Run the pipeline on a preferred port
   - You can pass a port number as a parameter (e.g., PORT=3000) and start the application on that port.
   - `USE CASE` :Deploy multiple test instances of a service on different ports for QA.
  
3. Select the version of a runtime or dependency
    - You can use parameters to choose which runtime version to use.
    - Examples:
    - Node.js 14,16,18
    - Java8, Java 11
    - Python 3.8 vs 3.11
    - `USE CASE`: Test compatibility with different runtime versions

4. Choose the deployment environment
    - Allow the user to select where the build should be deployed:
    - `dev`
    - `qa`
    - `staging`
    - `production`