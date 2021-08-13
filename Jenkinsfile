pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }


    stages{
         stage('Terraform destroy (if any)'){
            steps{
                dir('/var/lib/jenkins/workspace/Terraform-Provision/Vms'){
                    sh 'terraform destroy --auto-approve'    
                }
                
            }
        }        
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