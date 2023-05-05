pipeline {
  agent any
  stages {

    stage('Setup') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install -y python3-pip python3-venv'
        sh 'python3 -m venv venv'
        sh '. env/bin/activate'
        sh 'pip3 install --upgrade pip'
        sh 'pip3 install -r requirements.txt'
      }
    }

  }
}
