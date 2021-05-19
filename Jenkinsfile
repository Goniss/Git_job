pipeline {
    /*agent {
        docker { image 'jenkins:slave' }
    }*/
    agent any
    stages {

        
        stage('TF init') {
            steps {
                sh 'Terraform init'
                echo 'Initialisation du projet Terraform'
            }
        }
        stage('TF plan') {
            steps {
                //sh 'Terraform plan'
                echo 'Plan du projet Terraform'
                
            }
        }
        stage('TF') {
            steps {
                echo 'test'
                echo ' Terraform'
                
            }
        }        
        
    }
}
