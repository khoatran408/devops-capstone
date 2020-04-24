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
                    docker.build("my-image:${env.BUILD_ID}")
                }
            }
        } 
     }         
               
        /* stage('Upload to AWS') {
            steps {
                withAWS(region:'us-west-2',credentials:'aws-static') {
                sh 'echo "Uploading content with AWS creds"'
                    s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'khoa-udacity')
                }
            }
        } */ 
     

}
