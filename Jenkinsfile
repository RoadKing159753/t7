pipeline {
    agent any
    stages {
        stage('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/RoadKing159753/ProTester.git']]])
            }
        }
        stage('Zscaler IaC scan') {
          steps{
            script {
              try {
                wrap([$class: 'ZscalerScan', failBuild: true]) {
                }
              }
              catch (err) {
                println "Zscaler IaC scan found some violations, which needs to be fixed"
              }
            }
          }
        }
    }
}
