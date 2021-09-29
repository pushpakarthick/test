pipeline {
    agent any

tools {
  terraform 'terraform'
}
stages{

   stage('Git checkout'){
   steps{
    git credentialsId: 'f30e7b33-bf5e-44b1-bb1c-18bd38a9c489', url: 'https://github.com/pushpakarthick/test'
    }
}

   stage('Terraform init'){
   steps{
     sh 'terraform init'
  }
}
   stage('Terraform apply'){
   steps{
{
     sh 'terraform apply'
  }
}
