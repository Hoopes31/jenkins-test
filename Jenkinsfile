pipeline {
  agent any
  tools {nodejs 'latest'}
  stages {
    stage('Build') {
        echo 'Building..'
        echo "${env.BUILD_ID} on ${env.JENKINS_URL}"
        echo 'Checking node config'
        sh 'npm config ls'
        app = docker.build("./")
    }
    stage('Test') {
        echo 'Starting test phase'
        app.inside{
          sh 'echo "Testing internal things"'
      }
    }
    stage('Deploy') {
        echo 'Deploying..'
        docker.withRegistry('https://hub.docker.com/r/hoopes31/testing-jenkins-deploy/', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
      }
    }
  }
}