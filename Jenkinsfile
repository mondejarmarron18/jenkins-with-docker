pipeline {
    agent any

    stage("Checkout") {
        steps {
            git url: 'https://github.com/mondejarmarron18/jenkins-app.git', branch: 'main'
        }
    }
    stage("Complete") {
        steps {
            echo "Hello World!"
        }
    }
}
