pipeline {
    agent any

    stages {
       stage('checkout git'){   
       		steps{
                	git poll: true, credentialsId: "b4277bb5-629c-4f2d-af7b-44325227f0e0" , url: "git@github.com:dacedos/springbootCucumberTest.git" 
       		}
   		}
        stage('Test and Build') {
            steps {
                echo 'Building..'
                sh '''
                	mvn clean install
                ''' 	
            }
        }
        stage('Build Docker') {
            steps {
                echo 'Building Docker..'
    	        sh '''
         	  	 docker build -t springbootcucumberimage:latest .
         		'''                
            }
        }
        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker Image....'
 				sh '''
         		    docker tag springbootcucumberimage:latest dacedos/springbootcucumberimage:latest
           			docker push dacedos/springbootcucumberimage:latest
             		docker rmi springbootcucumberimage:latest
	           	'''                
            }
        }
    }
}
