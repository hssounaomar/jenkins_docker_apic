pipeline {
    agent { dockerfile { args "-v tcp://127.0.0.1:2376:/var/run/docker.sock"} }
    stages {
        stage('Publish') {
            steps {
                checkout scm
                bat "./deploy.sh apimanagerapicdev.is.damart.fr arboun \"5m5&DXvX*PUGFKlQDK%*\" sandbox damart damart-ad"
            }
        }
    }
}
