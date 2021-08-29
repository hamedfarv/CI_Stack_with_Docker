pipeline {
  agent any
  stages {
    stage('Build my website') {
      steps {
        sh "scripts/build.sh"
      }
    }

    stage('Run my tests') {
      steps {
        sh "scripts/unit_tests.sh"
      }
    }

    stage('Deloy website') {
      steps {
        sh "scripts/deploy_website.sh"
      }
    }
  }
}