pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'your-credentials-id', url: 'https://github.com/your-username/your-repo.git']]])
      }
    }
    stage('Setup') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install -y python3-pip python3-venv'
        sh 'python3 -m venv venv'
        sh 'source venv/bin/activate'
        sh 'pip3 install --upgrade pip'
        sh 'pip3 install -r requirements.txt'
      }
    }

  }
}
