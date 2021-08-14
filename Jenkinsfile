pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }


    stages{
         stage('Terraform destroy (if any)'){
            steps{       
                  sh 'ls -ltr'                 
            }
         }
         stage('Terraform destroy (if any II)'){
            steps{       
                  sh 'pwd'                
                
            }
         }
               
        
        
    }

    
    
}