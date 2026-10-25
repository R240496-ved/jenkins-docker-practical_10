pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'docker build -t my-store .'
            }
        }

        stage('Deploy') {
            steps {
                bat 'docker rm -f my-store-container || exit /b 0'
                bat 'docker run -d --name my-store-container -p 8082:80 my-store'
            }
        }
    }
}
