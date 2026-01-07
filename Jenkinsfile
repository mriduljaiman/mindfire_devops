pipeline {
    agent any
    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t mindfire-devops .'
            }
        }

        stage('Run') {
            steps {
                bat 'docker run --rm mindfire-devops'
            }
        }
    }
}
