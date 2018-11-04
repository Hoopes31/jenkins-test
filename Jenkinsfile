pipeline {
  agent any

  environment {
    dockerImage = ""
    project = "prj-sand-264f4330"
    containerName = "test-deploy"
  }

  // tools {nodejs "latest"}

  stages {
    stage("Clone") {
      steps {
        checkout scm
      }
    }
    stage('Build') {
      steps {
        sh 'ls'
        echo "${env.BUILD_ID} on ${env.JENKINS_URL}"
        script {
          dockerImage = docker.build("jenkins-test")
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Starting test phase'
        script {
          dockerImage.inside{
            sh 'echo "Testing internal things"'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying..'
        script {
          sh "docker push gcr.io/${project}/${containerName}:${env.BUILD_NUMBER}"
        }
      }
    }
  }
}