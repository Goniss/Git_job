pipeline {
    agent any

    stages {
        stage('Preparing Workspace') {
            steps{
                git branch:'main', url:'https://github.com/Goniss/Git_job/blob/main/main.tf'
            }
        }
        
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