@Library('my-first-project') _

pipeline {

    agent any

    stages{

        stage('git checkout'){
            steps{
                script{
                    gitCheckout(
                        branch: 'main'
                        url: 'https://github.com/sanjay7709/testing-project.git'
                    )
                }
            }
         }
    }
}