# Parameterized Pipelines
- Parameterized build allows you to  create flexible and customizable build jobs by defining parameters that can be passed when triggerring a build. These parameters can be used to make your builds more dynamic and versatile.


# How to configure a PARAMETRISED PIPELINE
- Inside the particular pipeline, navigate to `General`
- check / Tick `This project is Parameterized`
- Give the Parameter a `NAME` and `VALUE`
- NOTE We can create as many `PARAMETER` as we want for a pipeline
- After creatiing these Paramters, we go to the `Jenkinsfile`
- Wherever we want to use this parameter in the we declare the name of the parameter by `params.name_of_parameter` 