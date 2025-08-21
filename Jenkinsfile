pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/dneha6430/docker-nginx-website.git' 
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-nginx-site .'
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                  docker stop my-nginx-site || true
                  docker rm my-nginx-site || true
                  docker run -d -p 80:80 --name my-nginx-site my-nginx-site
                '''
            }
        }
    }
}
