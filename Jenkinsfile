pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        git(url: 'git@192.168.56.101:root/demo.git', branch: 'master')
      }
    }
    stage('test') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}