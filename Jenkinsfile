pipeline {
    agent any

    stages {
        stage("Checkout") {
            steps {
                git url: 'https://github.com/mondejarmarron18/jenkins-with-docker.git', branch: 'main'
            }
        }

        stage("Build") {
            steps {
                sh "make prod"
            }
        }
        stage("Complete") {
            steps {
                echo "Successfully deployed!"
            }
        }
    }
}
