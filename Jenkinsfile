pipeline {
  agent any
  stages {
    stage('Start') {
      steps {
        echo 'Start Pipeline'
      }
    }
    stage('Test') {
      steps {
        sh '''#!/bin/sh
#cd $WORKSPACE
chmod 755 ./jenkinstest.sh
echo "START TEST DEPLOYMENT"
./jenkinstest.sh'''
      }
    }
    stage('Finalize') {
      steps {
        sh '''#!/bin/sh

chmod 755 ./done.sh 
./done.sh'''
      }
    }
    stage('End') {
      steps {
        echo 'Well done, your pipeline is working'
      }
    }
  }
}