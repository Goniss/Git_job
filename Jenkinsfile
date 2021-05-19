pipeline {
    agent any

    stages {

        
        stage('TF init') {
            steps {
                bat 'Terraform init'
                echo 'Initialisation du projet Terraform'
            }
        }
        stage('TF plan') {
            steps {
                bat 'Terraform plan'
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
