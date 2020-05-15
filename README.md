[![turnerapps](https://circleci.com/gh/turnerapps/Operationalize_Machine_Learning.svg?style=svg)](https://circleci.com/gh/turnerapps/Operationalize_Machine_Learning)

## Project Overview

In this project, I operationalized a Machine Learning Microservice API. 

I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project was designed to test my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls.

### Project Tasks

My project goal was to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project, I:
* Tested my project code using linting
* Completed a Dockerfile to containerize this application
* Deployed the containerized application using Docker and made a prediction
* Improved the log statements in the source code for this application
* Configured Kubernetes and created a Kubernetes cluster
* Deployed a container using Kubernetes and made a prediction
* Uploaded a complete Github repo with CircleCI to indicate that my code has been tested



### How to use
1. Run locally: `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

To make a prediction: `./make_prediction.sh`
(note: prediction currently works only after run_kubernetes.sh has been run.)

### Files/Folders explanation
* .circleci, .circleci/config.yml: Configuration for CircleCI
* model_data/*: data provided by project starter.
* output_txt_files/docker_out.txt: Output from run_docker.sh (in conjunction with make_prediction.sh)
* output_txt_files/kubernetes_out.txt: Output from run_kubernetes.sh
* app.py<i></i>: The provided application, edited to pass linting and for better logging.
* Dockerfile: used to build Docker image.
* make_prediction.sh: uses curl to post data and receive a JSON response with a prediction. Modified to use the url provided by minikube.
* Makefile: script used to install dependencies and lint application.
* README.md<i></i>: this file
* requirements.txt: List of files for Makefile to use to install python dependencies.
* run_docker.sh: bash script to build and run a docker image.
* run_kubernetes.sh: bash script to run the docker container with kubernetes
* upload_docker.sh: bash script to upload the latest version of the script to my docker hub repo. Requires authentication, or modification of hardcoded repo (dockerpath) variable. If repo variable is changed, run_kubernetes.sh will need to be modified to match.