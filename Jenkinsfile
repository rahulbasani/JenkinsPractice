pipeline{
    agent any
    stages{
        stage('git initialize'){
            steps{
                sh "git init"
            }
        }
        stage('git checkout'){
            steps{
                sh "git pull https://github.com/rahulbasani/JenkinsPractice.git"
            }
        }
        
    }
}
