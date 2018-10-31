pipeline {
  agent any

  tools {nodejs “node”}

  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        echo "${env.BUILD_ID} on ${env.JENKINS_URL}"
        echo 'Installing node'
        sh 'npm i'
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