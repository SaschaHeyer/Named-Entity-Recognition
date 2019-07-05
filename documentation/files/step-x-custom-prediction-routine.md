# Custom prediction routine

Allow us to determine what code runs when we send a prediction request.
Without custom prediction routine the machine learning framework handles the prediction operation.
With custom prediction routine we can define custom code which runs for each prediction request.

## Why custom prediction routine
Our model requires numeric inputs, remember the preprocessing steps.
This is very unhandy if we want to use our model with raw text.
To support preprocessing also on prediction time we have to define a custom prediction route.

> Without custom prediction routine we would need to implement this preprocessing in a additional wrapper, for example App Engine or Cloud Function. Which adds complexity and latency.

## How is it working?

Our custom prediction routine requires three parts

* The model
* The preprocessing state
* A Python package `tar.gz` which contains our implementation