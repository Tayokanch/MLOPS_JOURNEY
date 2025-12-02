# JENKINS DIRECTIVES / COMPONENTS

- `environment {}`: This is used for defining key value pairs to set environment variables for all stages or for a specific stages depending on the placement.

- `post{}`: This is used to execute one or more steps after a pipeline run finishes, regardless of the success or failure of the pipeline status. A common use case include sending notification or cleaning up temporary file after the pipeline has completed. We can also send notification by integrating with plugins like Slack Notifier to send notifications to various Slack channels

-` script{}`: This can be used to encapsulate a block of Groovy code for more complex login within a stage 

- `when {}` : This directive defines conditions under which a stage should be executed. It can commonly be used for conditional branching based on factors like branch name or the build result

- `credentials{}`: This provides access to predefined credentials stored in jenkins, e.g `API KEYS`, `PASSWORD` or `Any Secret files`. It can be used with tools or scripts that require authentication.
  
- `input {}`: An interactive input directive allows users to provide input during pipeline execution through a UI. it requires plugins like `Pipeline Utility Steps plugin`
- 
- `parameters {}`: This can be used for defining parameters that can be passed to the pipeline during execution allowing for dynamic configuration.
 
- `stach{} / unstach{}`: These directives can store and retrieve the artifacts. It could be files, build outputs btw pipelines stages or jobs running on different nodes. it is useful for caching build results or sharing data across jobs.

- `parallel{}`: The parallel stage directive executes multiple stages concurrentlkt to optimize pipeline execution time. It requires stages to be independent and not rely on output from each other.

  
- `tools{}`: This is used to define which tools needed for any of the stage to run. e.g a particular version of nodejs which our job would be run on `tools{ nodejs "20.4"}`. NOte: we need to configure any tools that we need i.e the `nodejs`

# How to configure a particular tool needed for a pipeline
- Navigate to the `manage jenkins` on the `Dashboard`
- Click on `tools` and select the Tools you need e.g `Nodejs`
- Give it a name based on the version `(NJ20.3.4)` and select the version which would still be `20.3.4`
- This is the name we would have in `pipeline tools{nodejs NJ20.3.4}`
