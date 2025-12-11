pipeline{
    agent any //docker{image 'ubuntu:alphine'}

    stages{
        stage('Building'){
            agent {docker 'ubuntu:alpine'}
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Unit Testing'){
            steps{
                script{
                    junit 'target/surefile-reports/*.xml'
                }
            }
        }
        stage('Deployment'){
            when{
                expression { branch == 'main'}
            }
            steps {
                sh 'deploy.sh'
            }
        }
    }
}




pipeline{
    environment{
        VAR1 = 'foo'
        VAR2 = 'bar'
    }    

    stages{
        stage('Building'){
            agent {docker 'ubuntu:alpine'}
            steps{
                sh 'echo $VAR1' //result = foo
            }
        }
        stage(' Test'){
            environment {VAR1 = "test"}
            steps{
                script{
                   sh 'echo $VAR1' //result = test
                }
            }
        }
        stage('Deployment'){
            when{
                expression { branch == 'main'}
            }
            steps {
                sh 'deploy.sh'
            }
        }
    }
}
