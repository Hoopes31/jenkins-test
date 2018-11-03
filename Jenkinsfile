pipeline {
  agent any
  tools {nodejs 'latest'}
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        echo "${env.BUILD_ID} on ${env.JENKINS_URL}"
        echo 'Checking node config'
        sh 'npm config ls'
        app = docker.build("./")
      }
    }
    stage('Test') {
      steps {
        echo 'Starting test phase'
        app.inside{
          sh 'echo "Testing internal things"'
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying..'
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
      }
    }
  }
}