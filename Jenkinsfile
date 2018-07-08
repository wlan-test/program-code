pipeline {
  agent any
  stages {
    stage('fetch') {
      steps {
        node(label: 'master') {
          git(url: 'git@192.168.56.101:root/demo.git', branch: 'master')
        }

      }
    }
    stage('maven') {
      steps {
        sh 'mvn clean install'
      }
    }
    stage('publish local') {
      parallel {
        stage('publish local') {
          steps {
            sh '''cp target/*.jar /home/tomcat/demo/
/home/tomcat/demo/demo.sh start'''
          }
        }
        stage('publish remote') {
          steps {
            node(label: '102') {
              sh '''cp target/*.jar /home/tomcat/demo/
/home/tomcat/demo/demo.sh start'''
            }

          }
        }
      }
    }
  }
}