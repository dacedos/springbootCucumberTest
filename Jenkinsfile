pipeline {
    agent any

    stages {
       stage('checkout git'){   
       		steps{
                	git poll: true, credentialsId: "b4277bb5-629c-4f2d-af7b-44325227f0e0" , url: "git@github.com:dacedos/springbootCucumberTest.git" 
       		}
   		}
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
