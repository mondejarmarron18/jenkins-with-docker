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
                    } catch (Exception err) {
                        error "Build failed: ${err}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo "Build succeeded!"
        }
        failure {
            echo "Build failed!"
        }
    }
}
