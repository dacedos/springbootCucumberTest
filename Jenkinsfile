pipeline {
    agent any

    stages {
       stage('checkout git'){   
       		steps{
                	git poll: true, url: "git@github.com:dacedos/springbootCucumberTest.git" , credentialsId: "dacedos"
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
