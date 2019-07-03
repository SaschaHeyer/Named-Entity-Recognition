# Run your pipeline

## Open the Kubeflow Notebook
The pipeline can be created using our Jupyter notebook. First we have to create a Notebook in Kubeflow. 

Open the Jupyter notebook interface and create a new Terminal by clicking on menu, New -> Terminal. In the Terminal, clone this git repo by executing:

```bash
git clone https://github.com/kubeflow/examples.git
```

Now you have all the code required to run the pipeline. Navigate to the `examples/named-entity-recognition/notebooks` folder and open `Pipeline.ipynb`

## Configure the pipeline

The pipeline need several parameter in order to execute the components. 

### Configure preprocess component

* `input_1_uri` -
* `output_y_uri_template` -
* `output_x_uri_template` -
* `output_preprocessing_state_uri_template` -

### Configure train component

* `input_x_uri` -
* `input_y_uri` -
* `input_job_dir_uri` -
* `input_tags` -
* `input_words` -
* `output_model_uri_template` -


### Configure deploy component
* `model_path` - The model path is the output of the previous pipeline step the training. 
* `model_name` - The model name is later displayed in AI Platform.
* `model_region` - The region where the model sould be deployed.
* `model_version` - The version of the trained model. 
* `model_runtime_version` - The runtime version, in our case we used TensorFlow 1.13 .
* `model_prediction_class` - The prediction class of our custom prediction routine. 
* `model_python_version` - The used python version
* `model_package_uris` - The package which contains our custom prediction routine. 