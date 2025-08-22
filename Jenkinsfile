pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/dneha6430/docker-nginx-website.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t my-nginx-site .'
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                  sudo docker stop my-nginx-site || true
                  sudo docker rm my-nginx-site || true
                  sudo docker run -d -p 80:80 --name my-nginx-site my-nginx-site
                '''
            }
        }
    }
}
