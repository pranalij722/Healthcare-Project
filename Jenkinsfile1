pipeline{
    agent any
    stages{
        stage('checkout the code from github'){
            steps{
                 git url: 'https://github.com/pranalij722/star-agile-health-care/'
                 echo 'github url checkout'
            }
        }
        stage('codecompile with Pranali'){
            steps{
                echo 'starting compiling'
                sh 'mvn compile'
            }
        }
        stage('codetesting with Pranali'){
            steps{
                sh 'mvn test'
            }
        }
        stage('qa with Pranali'){
            steps{
                sh 'mvn checkstyle:checkstyle'
            }
        }
        stage('package with Pranali'){
            steps{
                sh 'mvn package'
            }
        }
        stage('run dockerfile'){
          steps{
               sh 'docker build -t myimg .'
           }
         }
        stage('port expose'){
            steps{
                sh 'docker run -dt -p 8082:8082 --name c001 myimg'
            }
        }   
    }
}
