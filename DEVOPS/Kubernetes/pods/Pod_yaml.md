# HOW TO CREATE A POD USING A YAML CONFIGURATION FILE

- A K8s defination fil always contains for top-levels filed or root-level fields
  
  - `apiVersion`: v1 = This is the version of K8s Api we are using to create the object. what we are working on determines what our version would be
    **Types apiVersion and the kind of object**
      - `Pod`: v1 = When working on *Pods* we use (v1).
      - `Service`: v1 = when working on *Service* we use (v1).
      - `ReplicaSet`: apps/v1 = when working on *ReplicaSet* we use (apps/v1)
      - `Deployment`: apps/v1 = when working on *Deployment* we use (apps/v1)

  - `kind`: Pod = In this case Pod is the kind of object we are trying to 
  
  - `metadata`: = This is the details about the object like it **name**, **labels**, etc
    - `name`: myapp-pod
    - `labels`:
  
        `app`: myapp

        `tier`: front-end
    
  - `spec`: = This is the specification section. It is where we would provide addition information about the object we are trying to create.
    - `containers`:
      - `- name`: nginx-container
        `  image`: nginx


# How Command Line to create the pod

- `kubectl create -f filename.yml` : This command is used for creating the pod using the configuration file.
- `kubectl get pods`: This is see the list of pods available.
- `kubetcl describe pod pod-name` : This is used  to get a detailed informatio about a pod
- `kubectl apply -f pod-name`: This is used for appying changes in a yaml configuration to an already existing Pods