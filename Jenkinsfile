pipeline {
    agent any

    stages {
        stage("Checkout") {
            steps {
                git url: 'https://github.com/mondejarmarron18/jenkins-with-docker.git', branch: 'main'
            }
        }
        stage("Complete") {
            steps {
                echo "Hello World!"
            }
        }
    }
}
