pipeline{
    //agent any
    agent { node{ label Agent-1 } }

    stages {
        stage('build') {
            steps{
                echo "building"
            }
            
        }
        stage('test') {
            steps{
                echo "testing"
            }
        }
        stage('deploy'){
            steps{
                echo "deploying"
            }
        }
    }


 post {

     always {
        echo "I will always run sucess or not"
     }

     success {
        echo "I will run only job is success"
     }
     failure {
        echo "I will run only job is failure"
     }
 }
}