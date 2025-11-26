# CONTINUOUS INTEGRATION AND DEPLOYMENT (CICD)

## CI SCENARIO

- So lets imagine a `Developer 1` creates a feature on `Branch A`, makes some modification and commit the changes on the Branch. `Developer 1` creates a pull request to merge `Branch A` to `Main Branch` on `Remote Repo (GIT HUB)`.

- But before the merging, a team member reviews the codes. As soon as the `PR` is created, an `automated CI pipeline` is triggered. The CI pipeline proceeds through several stages, including `Unit Testing`, `Dependecy Scanning`, `Artifact Building` and `Vulnerability Code Scanning`. All these assessments are performed on both the newly added code and the existing code from the main Branch.

- If any of the tests fail, the developer is asked to make necessary adjustments and commit the changes to the same pull request. This action triggers the CI pipeline once again. If there are no failures this time, the pull request is approved and merged into the `main branch`.

- The same process would apply to Feature `Developer 2`. Developer 2 creates their own feature branch, makes changes, opens a pull request, triggers CI, receives reviews, fixes issues if CI fails, and once CI succeeds, their work is also merged into the main branch.

- Lastly, any change merged into the `Main Branch` automatically triggers a CI pipeline. This ensures that the code changes from both feature branches A & B work seamlessly together. This continuous validation prevents integration conflicts and ensures the stability of the Main Branch.


## CD SCENARIO

- After code integration into the `Main Branch`, and a successful completion of the `CI pipeline`, a manual deployment to the production environment was performed. In many scenarios, even after rigorous CI and testing, it is advisable to deploy the modified application to a non-production environment that closely resemble the live environment. This allows for live testing before proceeding with the production deployment. Within the feature branch, following the CI pipeline run, we can establish another Continuous Deployment Pipeline.

- This `Pipeline` is responsible for deploying the modified code to a `Staging or Development` environment. Following deployment, a series of tests are executed to ensure the quality of the application.

- Upon successful completion of the CD pipeline in the feature branch, the pull request is approved and merged into the `Main Branch`. After the merge, the `CI pipeline` runs again on the Main Branch to assess the newly integrated changes. If CI is successful, it automatically triggers the CD pipeline, resulting in the deployment of the application to the production environment.
