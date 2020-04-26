Deploy a CI/CD pipeline on Jenkins with simple nginx application "Hello World, my name is Khoa Tran.. "                                    
Build jenkins server with plugins.                                                                                               
Create network infrastructure: "sh create.sh network network.yml network-parameters.json"                                                  
Create eks kubernetes on AWS: "sh create.sh eks eks.yml eks-parameters.json"                                                      
Jenkinsfile:                                                                                                                      
  Lint test with tidy. 
  Security test with aquaMirco scan.
  Build docker image after pass test stages with Dockerfile.
  Push docker image to Amazon ECR.                                                                                                          
Deploy docker image to AWS kubernetes service EKS: run_kubernetes.sh                                                                          
Expose nginx application: kubectl create -f loadbalancer.yaml


  
  



