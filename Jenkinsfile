pipeline {
  agent any

  environment {
    registry = "hoopes31/testing-jenkins-deploy"
    registryCredential = "dockerhub"
    dockerImage = ""
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
        sh 'docker -v'
      }
    }
    // stage('Test') {
    //   steps {
    //     echo 'Starting test phase'
    //     script {
    //       dockerImage.inside{
    //         sh 'echo "Testing internal things"'
    //       }
    //     }
    //   }
    // }
    // stage('Deploy') {
    //   steps {
    //     echo 'Deploying..'
    //     script {
    //       docker.withRegistry('https://hub.docker.com/r/hoopes31/testing-jenkins-deploy/', registryCredential) {
    //           dockerImage.push("${env.BUILD_NUMBER}")
    //           dockerImage.push("latest")
    //       }
    //     }
    //   }
    // }
  }
}