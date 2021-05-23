
pipeline{
    agent any
    tools {
      maven 'maven3'
    }
        
    stages{
        stage('Maven Build'){
            steps{
                sh "mvn clean package"
            }
        }
        
        stage('Docker Build'){
            steps{
                sh "docker build . -t hemanthj42/petclinicspring:${JOB_NAME}.${BUILD_NUMBER} "
            }
        }
        
        
        stage('DockerHub Push'){
            steps{
                withCredentials([string(credentialsId: 'dockerhemant', variable: 'docker')]) {
 
                    sh "docker login -u hemanthj42 -p ${docker}"
                }
                
                sh "docker push hemanthj42/petclinicspring:${JOB_NAME}.${BUILD_NUMBER} "
            }
        }
        
        stage('copying artifacts'){
            steps{
              ansiblePlaybook become: true, credentialsId: 'ans', disableHostKeyChecking: true, installation: 'ansible', playbook: 'ansible-deploy-test.yml'            }
        }       
    }
}
