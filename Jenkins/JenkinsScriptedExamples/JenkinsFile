node{
    def mavenHome = tool name: "Maven 3.8.6"
    
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5'))])
    
    stage('checkutCode'){
        git branch: 'qa', credentialsId: 'ff6842f8-c896-4efa-8653-997635805033', url: 'https://github.com/shashavalidudekula/maven-web-application.git'
    }
    
    stage('Build'){
        sh "${mavenHome}/bin/mvn clean package"
    }
    
    stage('SonarQubeReport'){
        sh "${mavenHome}/bin/mvn sonar:sonar"
    }
    
    stage('UploadArtifactToNexus'){
        sh "${mavenHome}/bin/mvn deploy"
    }
    
     stage('DeployToTomcat'){
        deploy adapters: [tomcat9(credentialsId: '53f27d79-3a3c-4536-a262-61c419a0e0df', path: '', url: 'http://172.31.38.222:8080/')], contextPath: '/maven-web-application', onFailure: false, war: '**/maven-web-application.war'
    }
    
}
