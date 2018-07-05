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
/home/tomcat/demo/demo.sh start'''
          }
        }
        stage('publish remote') {
          steps {
            sh '''scp target/*.jar root@192.168.56.102:/root/demo2/
ssh -T root@192.168.56.102  \'bash -s\' < /root/demo2/demo.sh start'''
          }
        }
      }
    }
  }
}