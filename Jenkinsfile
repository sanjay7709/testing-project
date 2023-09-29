pipeline {

    agent any

    stages{

        stage('git checkout'){
            steps{
                script{
                    git branch: 'main', url: 'https://github.com/sanjay7709/testing-project'
                }
            }
         }
    }
}