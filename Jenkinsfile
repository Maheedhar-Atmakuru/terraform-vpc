pipeline {
    agent any
    stages{
        stage('terraform Init'){
            steps{
                sh "terrafile -f env-dev/Terrafile"
                sh "terraform init --backend-config=env-dev/dev-backend.tfvars"
            }
        }
        stage('terraform Plan'){
            steps {
                sh "terraform plan --var-file env-dev/dev.tfvars"
            }
        }
        stage('terraform Action'){
            steps {
                sh "terraform apply -auto-approve --var-file env-dev/dev.tfvars"
            }
        }
    }
}