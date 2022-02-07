pipeline {
    agent any
    tools {
        terraform 'TerraForm-Test'
    }
    stages {
        stage ("Git CheckOut") {
            steps {
                git credentialsId: 'Git-Home-Exercise', url: 'https://github.com/MarioFried/LP-B2B-GKE.git'
            }
        }
        stage ("Terraform INIT") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("Terraform APPLY") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
