pipeline {
  agent any
  stages {

    stage('Setup packages') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install -y python3-pip python3-venv'
        sh 'python3 -m venv venv'
        sh '. venv/bin/activate'
        sh 'pip3 install --upgrade pip'
        sh 'pip3 install -r requirements.txt'
      }
    }

      stage('Setup Service'){
            steps {
                def serviceContent = """[Unit]
                Description=My Service

                [Service]
                ExecStart=/path/to/my/program
                Restart=always

                [Install]
                WantedBy=multi-user.target
                """

                sh 'cd /var/lib/jenkins/workspace/djagno-test/scripts/'
                sh "echo '''${serviceContent}''' > /etc/systemd/system/my-service.service"

            }
        }

  }
}
