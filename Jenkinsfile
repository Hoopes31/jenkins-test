pipline {
  agent any

  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        echo "${env.BUILD_ID} on ${env.JENKINS_URL}"
      }
    }
    stage('Test') {
      steps {
        echo 'Test..'
      }
    }
    stage('Deploy') {
      echo 'Deploying..'
    }
  }
}