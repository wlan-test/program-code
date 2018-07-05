pipeline {
  agent any
  stages {
    stage('fetch') {
      steps {
        git(url: 'git@192.168.56.101:root/demo.git', branch: 'master')
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
sleep 5
/home/tomcat/demo/demo.sh start'''
          }
        }
        stage('publish remote') {
          steps {
            sh '''sleep 2
scp target/*.jar tomcat@192.168.56.102:/home/tomcat/demo/
ssh -T tomcat@192.168.56.102  \'bash -s\' < /home/tomcat/demo/demo.sh start'''
          }
        }
      }
    }
  }
}