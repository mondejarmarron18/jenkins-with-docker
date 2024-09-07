pipeline {
    agent any

    stages {
        stage("Clone") {
            steps {
                git(url: 'https://github.com/mondejarmarron18/jenkins-with-docker.git', branch: 'main')
            }
        }

        stage("Test") {
            steps {
                script {
                    try {
                        sh "make test"
                    } catch (Exception err) {
                        error "Test failed: ${err}"
                    }
                }
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
            emailext (
                to: 'mondejarmarron18@gmail.com',
                subject: 'Jenkins Build Succeeded',
                body: 'The Jenkins build was successful.',
                attachLog: true
            )
        }
        failure {
            emailext (
                to: 'mondejarmarron18@gmail.com',
                subject: 'Jenkins Build Succeeded',
                body: 'The Jenkins build was successful.',
                attachLog: true
            )
        }
    
    }
}
