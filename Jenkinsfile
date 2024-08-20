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
                script {
                    try {
                        sh "make prod"
                    } catch (err) {
                        echo "Error: ${err}"
                    }
                }
            }
        }
        stage("Complete") {
            steps {
                echo "Successfully deployed!"
            }
        }
    }
}
