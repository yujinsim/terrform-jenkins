pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('key')
        AWS_SECRET_ACCESS_KEY = credentials('secret_key')
        AWS_DEFAULT_REGION = 'ap-northeast-2'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/yujinsim/terrform-jenkins.git'
            }
        }
        stage('Terraform init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }
        
        stage('Terraform apply') {
            steps {
                script {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
        
    }
}