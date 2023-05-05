pipeline {
  agent any
  stages {

    stage('Setup') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install -y python3-pip python3-venv'
        sh 'python3 -m venv venv'
        sh '. venv/bin/activate'
        sh 'pip3 install --upgrade pip'
        sh 'pip3 install -r requirements.txt'
      }
    }

      stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }

  }
}
