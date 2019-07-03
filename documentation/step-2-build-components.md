# Build components

A component is code that performs one step in the Kubeflow pipeline. It is a containerized implementation of an ML task. **Components can be reused in other pipelines.**

## Component structure
A component follows a specific structure and contains:
 
* Component logic. 
* Component specification as yaml. 
* Dockerfile to build the container. 
* Readme to explain the component and its inputs and outputs. 
* Scripts to build the component and push it to a Docker repository. 

## Components
This Kubeflow project contains 3 components

* preprocess
* train
* deploy

### Preprocess component
The preprocess component is downloading the training data and performs several preprocessing steps. This preprocessing step is required in order to have data which can be used by our model. 


### Train component
The train component is using the preprocessed training data. Contains the model itself and manages the training process. 

### Deploy component
The deploy component is using the model and starts a deployment to AI Platform. 

## Build components
In order to use the components later on in our pipelines we have to build and push those components to a docker registry. In this example we are using the 
[Google Container Registry](https://cloud.google.com/container-registry/), if is possible to use any other docker registry. 

Each component has his dedicated build script `build_image.sh`, please open this file for each component and set **`<PROJECT-ID>`** to your Google Cloud Platform project id.

To build and push the components please open a new Terminal and navigate to `/../` and run the following command:

```bash
sh build_components.sh
```

## Check if the components are sucessfully pushed to the Google Cloud Repository
