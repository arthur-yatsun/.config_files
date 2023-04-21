pipeline {
	agent any
    environment {
        APP_NAME = "test_app"
    }
    stages {
        stage("Checkout"){
            steps{
                checkout scm
            }
        }
        stage("Build environment") {
            steps {
                echo "Building environment"
            }
        }
        stage("Deployment") {
            timeout(time: 1, unit: 'HOURS') {
                input message: "Approve deployment?", ok:
            }
            when {
                expression {
                    return GIT_BRANCH == 'origin/master';
                }
            }
            steps {
                echo "Deploy"
            }
        }
    }
}
