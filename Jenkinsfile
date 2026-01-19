pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = "us-east-1"
    }

    stages {

        stage('Checkout SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/Waseema761/terraform.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh '''
                  cd terraform
                  terraform init
                '''
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                  cd terraform
                  terraform plan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh '''
                  cd terraform
                  terraform apply -auto-approve
                '''
            }
        }
    }
}
