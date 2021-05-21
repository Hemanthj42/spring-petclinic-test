
pipeline{
    agent any
    tools {
      maven 'maven3'
    }
        
    stages{
        stage('git checkout'){
            steps{
            git 'https://github.com/Hemanthj42/spring-petclinic-test.git'
            }
        }
        
        stage('Maven Build'){
            steps{
                sh "./mvnw clean package"
            }
        }
        
        stage('Docker Build'){
            steps{
                sh "docker build . -t hemanthj42/petclinictest:${BUILD_NUMBER} "
            }
        }
        
        
        stage('DockerHub Push'){
            steps{
                withCredentials([string(credentialsId: 'dockerpass', variable: 'dockerhub')]) {
 
                    sh "docker login -u hemanthj42 -p ${dockerhub}"
                }
                
                sh "docker push hemanthj42/petclinictest:${BUILD_NUMBER} "
            }
        }
        
        stage('copying artifacts'){
            steps{
              ansiblePlaybook credentialsId: 'ansible', disableHostKeyChecking: true, installation: 'ansible', playbook: 'ansible-deploy-test.yml'
            }
        }
    }
}
