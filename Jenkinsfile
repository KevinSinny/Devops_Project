pipeline {
    agent any

    tools {
        nodejs 'NodeJS-20'
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/MamthaKSunilkumar/CS8_demo.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build React App') {
            steps {
                sh 'npm run build'
            }
        }
    }

    post {
        success {
            echo 'React build successful 🎉'
        }
        failure {
            echo 'Build failed ❌'
        }
    }
}
