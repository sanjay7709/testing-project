@Library('my-first-project') _

pipeline {

    agent any

    stages{

        stage('git checkout'){
            steps{
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/sanjay7709/testing-project.git"
                )
            }
         }
        stage('unit-testing'){
            steps{
                script {
                    mvnTest()
                }
            }
         }
        stage('maven integration testing'){
            steps{
                script {
                    mvnIntegrationtest()
                }
            }
         }
    }
}