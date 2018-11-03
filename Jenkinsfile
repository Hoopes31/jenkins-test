pipeline {
  agent { dockerfile true }

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
    // stage('Build') {
    //   steps {
    //     echo 'Building..'
    //     echo "${env.BUILD_ID} on ${env.JENKINS_URL}"
    //     sh 'ls'
    //     script {
    //       dockerImage = docker.build("jenkins-test")
    //     }
    //   }
    // }
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