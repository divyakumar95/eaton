## Exercise 1 - CI Pipeline
In this exercise we require you to build a CI pipeline to support a python library. The CI pipeline should run basic code quality checks(linting), execute tests, validate that you can build a python package, build a docker image and run a basic vulnerability scan on the docker image. There is no need to store or deploy the docker image, once you have a validated docker image the exercise is complete.

Our preferred CI tool is github actions but you can use any CI tool you prefer as long as the CI setup is done with a configuration file such as a YAMl file and not through a UI tool.

#### Python Microservice
The python app is in the python folder. This is a simple python application with tests, you don't need to understand the application as part of the assessment, you only need to focus on the CI pipeline.

We do not expect you to know python so the commands you will need are provided below and can be executed within the python folder.<br /><br />
Install dependencies.
```
pip install .
```
Run Application
```
python src/app.py
```
Run Tests
```
pytest tests/test_app.py
```
Build Python Package
```
python -m build --wheel
```

### Requirements


| Task | Notes |
| -------- | ------- |
| Run Basic Static Code Analysis (Linting) | You can use the linter of your choice. You do not need to fail the pipeline if the linter finds issues |
| Run Unit Tests                            | You should fail the pipeline if the tests fail |
| Validate the Package Builds               | You do not need to do anything with the package once built. If the package fails to build the pipeline should fail |
| Build Docker Image                        | |
| Run Vulnerability Scan on Docker Image    | You can use a vulnerability tool of your choice. You do not need to fail the pipeline if issues are found |


### Output
- A basic diagram showing the steps in your pipeline (you can use the diagram tool of your choice)
- A CI configuration file e.g YAML file
- Log output from your CI run, you can copy the output to a text file
- Optional - Screenshots from your pipeline run
- Optional - A link to you pipeline if hosted publicly

## Exercise 2 - Design
Provide a Cloud Architecture (Component/Block Diagram) for the following problem.

We receive live electrical data from another application called Driver. Driver sends a reading of voltage and current every second. We need to architect a solution that will perform the following:
- Ingest data from Driver
- Realtime stream processing
- Storage for the output of realtime analytics
- Rest API for other services to access our analytics

### Stream data management
Add a service which can receive realtime data from Driver. You can select a protocol of your choice.
The connection to Driver should be as secure as possible. You can assume we know the IP and Port of the Driver application.

### Realtime Processing Service
We require a service which can perform realtime electrical event detection. This service will need to analyse the streamed data in realtime and identify when power reading exceeds a critical threshold. The identified event should automatically be stored for use in our Rest API. You do not need to identify the logic needed to do the event detection just suggest a service which can perform realtime processing.

### API & Storage
We want to provide a Rest API to access the data created by our realtime service. Pick a storage solution which allows us to write the data from the realtime service but also enables reading of this data to serve API requests

## Rules & Guidance
- You can use any reference material including online resources to solve these problems
- There are multiple ways to solve the exercises above. We review your overall approach and solution to solving the problems, not just if have generated the correct result.
- There are different ways to interpret the instructions. For both exercises you can note any assumptions in a document and attach it to your submission.
- Even if you do not fully solve the problems please submit your attempt.

### Exercise 1
- The aim of this is to assess your overall understanding of CI pipelines. To ensure this exercise does not take too long we will not be looking at small issues like syntax, logging etc
- You can assume the CI pipeline is for a single main branch, there is no need to support multiple branches such as dev, qa etc

### Exercise 2
- You only need to provide a diagram and a document containing your assumptions (if required), there is no requirement to write any code or implement your design.
- You can use the diagram/architecture tool of your choice
- Our preferred cloud provider is Microsoft Azure but you can design this solution on the cloud provider of your choice
- You can keep the architecture diagram high level and we can discuss any low level details during our review.

## Submission
- Please combine your diagrams, files, screenshots and any other relevant material into a zip folder and email to markcolton@eaton.com and leonardfeehan@eaton.com.
- If you have any questions on the above problems either take note of your assumptions or email markcolton@eaton.com and leonardfeehan@eaton.com for clarification
- Once you have submitted your assessment we will arrange a call with you to discuss your solution in detail.
