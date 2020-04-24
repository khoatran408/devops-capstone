pipeline {
     agent any
     stages {
        
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        /* stage('Security Scan') {
            steps { 
                aquaMicroscanner imageName: 'nginx:latest', notCompliesCmd: 'exit 1', onDisallowed: 'ignore', outputFormat: 'html'
            }
        } */ 
        stage('Building image'){
            steps{
                script {
                   docker.build("my-image:latest")
                }
            }
        }
        stage('Upload to ECR') {
            steps {
                script {
                    docker.withRegistry('https://350373288714.dkr.ecr.us-west-2.amazonaws.com', 'ecr:us-west-2:aws-static') {
                        docker.image('my-image:latest').push('latest')
                    }                    
                }    
            }
        } 
     }         
}
