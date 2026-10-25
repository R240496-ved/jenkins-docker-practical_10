pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat '"C:\\Users\\vedkh\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" build -t my-store .'
            }
        }

        stage('Deploy') {
            steps {
                bat '"C:\\Users\\vedkh\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" rm -f my-store-container || exit /b 0'
                bat '"C:\\Users\\vedkh\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe"  run -d --name my-store-container -p 8082:80 my-store'
            }
        }
    }
}
