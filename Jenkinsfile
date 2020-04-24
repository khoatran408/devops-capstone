pipeline {
     agent any
     stages {
        
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Security Scan') {
            steps { 
                aquaMicroscanner imageName: 'nginx:latest', notCompliesCmd: 'exit 1', onDisallowed: 'ignore', outputFormat: 'html'
            }
        } 
        stage('Building image'){
            steps{
                script {
                   myImage = docker.build("my-image:latest")
                }
            }
        }
        stage('Upload to ECR') {
            steps {
                script {
                    docker.withRegistry('350373288714.dkr.ecr.us-west-2.amazonaws.com/udacity', 'awsCredentials') {
                        myImage.push("capstone")
                        myImage.push("latest")
                    }                    
                }    
            }
        } 
     }         
}
