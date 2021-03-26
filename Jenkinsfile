pipeline {
   
   agent {
      label 'dedicated-slave'
   }

   tools {
      maven 'maven-3.6.0'
      jdk 'java8'
   //  dockerTool 'docker'
      
   }

   stages {
      stage("Checkout Code") {
         steps {
            checkout scm
         }
      }
      stage("Docker Test"){
         steps {

            sh "docker ps"
         }
      }
  
      stage("Docker Build and Tag") {
         steps {
            sh "docker build . -t calebcall97/gradelsample:latest"
            
            //sh "docker tag gradelsample calebcall97/gradelsample:$BUILD_NUMBER"
         }
      }
      
      stage("Docker Push") {
         steps {
            withDockerRegistry(credentialsId: 'calebcall97', url: 'https://index.docker.io/v1/') {
               sh "docker push calebcall97/gradelsample:latest"
            }
         }
      }
      
      stage("Deploy") {
         steps {
           
               sh"chmod +x ./deploy.sh"
               sh"./deploy.sh"
               
         }
      
      }

   }
}
