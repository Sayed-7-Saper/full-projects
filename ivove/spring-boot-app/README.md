# CI-CD-Pipeline
# CI-CD-Pipeline





### Tools: 
 - `Jenkins`: To Create a public repository & Bulid  CI/CD pipeline for  simple Nodejs project.
 - `Docker`: To Build  image using the Dockerfile & Push the Docker image to a container registry in Docker Hub.
 - `AWS EC2`: To Deploy an OpenShift cluster.
 - `OpenShift`: TO  Deploy the java application using the Docker image from the container registry.




## Make the deployment script executable:

   ```bash
   chmod +x build.sh
   ```

## Run the deployment script:

   ```bash
   ./build.sh
   ```
 




## Prerequisites

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) configured with appropriate permissions
- [Docker](https://docs.docker.com/engine/install/) installed and configured
- [kubectl](https://kubernetes.io/docs/tasks/tools/) installed and configured to interact with your Kubernetes cluster
- [Helm](https://helm.sh/docs/intro/install/) installed
- [OpenShift](https://gist.github.com/mehdihasan/3399998cba54bdec78deb9be4a0) installed
- [GitHub_CLI](https://github.com/cli/cli) installed
- [K9s](https://k9scli.io/topics/install/) installed
- [Studio_3T](https://studio3t.com/download/) OR [MongoDB_Compass](https://www.mongodb.com/try/download/atlascli)