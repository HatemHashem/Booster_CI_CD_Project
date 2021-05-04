pipeline {
    agent any

    stages {
        stage('preparation') {
            steps {
                git 'https://github.com/HatemHashem/Booster_CI_CD_Project.git'
            }
        }
        stage('CI') {
            steps {
                sh 'docker build . -t hatem123/django_cicd:1.0'
            }
        }
        stage('CD') {
            steps {
                sh 'docker run -d -p 8000:8000 hatem123/django_cicd:1.0'
            }
            
            post{
            	success{
            		slackSend (color:"#52a832", message: "CICD cycle completed successfully")
            	}
            }
        }
        
    }
}
