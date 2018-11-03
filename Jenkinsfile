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
        script {
          def app = docker.build("./")
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Starting test phase'
        script {
          app.inside{
            sh 'echo "Testing internal things"'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying..'
        script {
          docker.withRegistry('https://hub.docker.com/r/hoopes31/testing-jenkins-deploy/', 'docker-hub-credentials') {
              app.push("${env.BUILD_NUMBER}")
              app.push("latest")
          }
        }
      }
    }
  }
}