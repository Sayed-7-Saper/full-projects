#build infrastructure

cd infra && \
terraform init 
terraform plan -out plan.out  -auto-approve
terraform apply -auto-approve
cd ..

# build ansible-playbook to install jenkins ,git , docker ,java and sonarqube

ansible-playbook -i ./install-packages/tests/inventory/ playbook.yml

# configer jenkins to run pipeline to bulid docker images and push it to dockerhub and buld K8s cluster and deploy the app in Openshift