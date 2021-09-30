pipeline {
    agent any 
    tools {
  terraform 'terraform'
}

stages {
    stage ("Git checkout") {
    steps{
    git branch: "main", credentialsId: "0591e46e-0352-4203-84d5-5c3c1ea534c0", url: "https://github.com/pushpakarthick/test"
    }
}

   stage ("Terraform init") {
   steps{
     sh "terraform init"
  }
}
   stage ("Terraform apply") {
   steps{
       sh "terraform apply"
   }
 }
     
  }
}
