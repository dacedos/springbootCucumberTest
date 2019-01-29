//comment
pipeline {
  agent any
  stages {
   stage('checkout git'){   
       steps{
           git poll: true, url: "git@github.com:dacedos/springbootCucumberTest.git"
       }
   }
   stage('Install'){   
       steps{
           sh '''
           	 mvn clean install
           '''
       }
   }
   stage('Build Docker'){   
       steps{
           sh '''
           	 docker build -t springbootcucumberimage:latest .
           '''
       }
   }   
   stage('Push Docker Image'){   
       steps{
           sh '''
             docker tag springbootcucumberimage:latest dacedos/springbootcucumberimage:latest
             docker push dacedos/springbootcucumberimage:latest
             docker rmi springbootcucumberimage:latest
           '''
       }
   }   
  }
}