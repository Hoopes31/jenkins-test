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
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'npm test'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying..'
      }
    }
  }
}