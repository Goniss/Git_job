pipeline {
    /*agent {
        docker { image 'jenkins:slave' }
    }*/
    agent any
      /*agent {
        docker {
            image 'hashicorp/terraform:light'
            args '--entrypoint='
        }
    }*/    
    stages {

        
        stage('TF init') {
            steps {
                sh 'terraform init'
                echo 'Initialisation du projet Terraform'
            }
        }
        stage('TF plan') {
            steps {
                sh 'terraform plan'
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
