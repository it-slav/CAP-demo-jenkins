pipeline {
  agent any
  stages {
    stage('cf push') {
      steps {
        pushToCloudFoundry(target: 'https://api.cap.suselinux.info', organization: 'system', cloudSpace: 'test', credentialsId: '8d3e6fa3-a05f-4a72-a2db-7b8b9aae8acf	', pluginTimeout: '120', selfSigned: 'yes')
      }
    }
  }
}