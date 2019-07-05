# Setup

## Deploying Kubeflow to Google Cloud Platform
This example requires a running Kubeflow environment. The easiest way to setup a Kubeflow environment is by using the [Deployment UI](https://www.kubeflow.org/docs/gke/deploy/deploy-ui/).

## Create bucket
We have to create a bucket, this bucket will contain everything which is required for our Kubeflow pipeline. 

```bash
gsutil mb -c regional -l us-east1 gs://your-bucket-name
```

For easier access please set our bucket as enviornment variable.

```bash
BUCKET=your-bucket-name
```

## Clone this repository
Everything you need is in this repository, please clone this repo:

```bash
git clone https://github.com/kubeflow/examples.git
```

Open a Terminal and navigate to the folder `/examples/named-entity-recognition/`.