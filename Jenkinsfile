pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }


    stages{               
        stage('Terraform init'){
            steps{
                dir('Vms'){
                    sh 'terraform init'    
                }
                
            }
        }
        stage('Terraform apply'){
            steps{
                dir('Vms'){
                    sh 'terraform apply --auto-approve'    
                }
                
            }
        }
         
    }

    
    
}