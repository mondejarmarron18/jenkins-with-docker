pipeline {
    agent any

    stages {
        stage("Clone") {
            steps {
                git(url: 'https://github.com/mondejarmarron18/jenkins-with-docker.git', branch: 'main')
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
                name: 'Jenkins',
                to: 'mondejarmarron18@gmail.com',
                subject: 'Jenkins Build Succeeded',
                body: 'The Jenkins build was successful.',
                attachLog: true
            )
        }
        failure {
            emailext (
                name: 'Jenkins',
                to: 'mondejarmarron18@gmail.com',
                subject: 'Jenkins Build Succeeded',
                body: 'The Jenkins build was successful.',
                attachLog: true
            )
        }
    
    }
}
