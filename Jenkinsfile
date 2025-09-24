pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t simple-app:latest .'
            }
        }
        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'echo "No tests yet"'
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying container..."
                sh 'docker run -d --name simple-app-container -p 8082:3000 simple-app:latest || true'
            }
        }
    }
}
