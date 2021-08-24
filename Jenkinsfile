pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }


    stages{               
        stage('Terraform init'){
            steps{
                dir('mig'){
                    sh 'terraform init'    
                }
                
            }
        }
        stage('Terraform plan'){
            steps{
                dir('mig'){
                    sh 'terraform plan'    
                }
                
            }
        }
        stage('Terraform apply'){
            steps{
                dir('mig'){
                    sh 'terraform apply --auto-approve'    
                }
                
            }
        }
         
    }

    
    
}