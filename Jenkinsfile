pipeline {
    agent any
    stages {
        stage('Pull Repo') {
            steps {
                // Get code from a specific branch (e.g., 'main' or 'develop')
                git branch: 'Main', url: 'https://github.com/akshaykadam-45/jenkins-test'
            }
        }

    
        stage('Build and Tag Image') {
            steps {
                sh 'docker build -t myimage .'
                sh 'docker tag myimage akshaykadam45/myrepo:${BUILD_NUMBER}'
            }
        }


        stage('Push to DockerHub') {
            steps {
                sh 'docker login -u $DOCKER_USER -p $DOCKER_PASSWORD'
                sh 'docker push akshaykadam45/myrepo:${BUILD_NUMBER}'
            }
        }
    }
}
