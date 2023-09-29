@Library('my-first-project') _

pipeline {

    agent any

    parameters{

        choice(name: "action", choices: 'create\ndestroy', description: 'choose your action')
    }

    stages{

        stage('git checkout'){
            when { expression { params.action == 'create'}}
            steps{
                gitCheckout(
                    branch: "main",
                    url: "https://github.com/sanjay7709/testing-project.git"
                )
            }
         }
        stage('unit-testing'){
        when { expression { params.action == 'create'}}
            steps{
                script {
                    mvnTest()
                }
            }
         }
        stage('maven integration testing'){
         when { expression { params.action == 'create'}}
            steps{
                script {
                    mvnIntegrationtest()
                }
            }
         }
        stage('sonar static code quality analysis'){
        when { expression { params.action == 'create'}}
            steps{
                script {
                    def sonarqubecreds = 'sonar-new'
                    staticCode(sonarqubecreds)
                }
            }
         }
        stage('sonar quality gate check'){
        when { expression { params.action == 'create'}}
            steps{
                script {
                    def sonarcred = 'sonar-new'
                    qualityGate(sonarcred)
                }
            }
         }        
    }
}