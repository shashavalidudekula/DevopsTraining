## Continuous Integration

Continuous integration is a DevOps software development practice where developers regularly merge their code changes into a central repository, after which automated builds and tests are run.

Jenkins is an open-source automation tool written in Java with plugins built for Continuous Integration purposes. Jenkins is used to build and test your software projects continuously making it easier for developers to integrate changes to the project, and making it easier for users to obtain a fresh build. It also allows you to continuously deliver your software by integrating with a large number of testing and deployment technologies.

Jenkins integrating at various Devops Stages 

<img src="https://github.com/shashavalidudekula/DevopsTraining/blob/main/Jenkins/Jenkins.jpg" width="600" height="450" >

## Jenkins Installation

### Pre-requisites 

  * Java must be installed 

### Installing Jenkins in Redhat/CentOS/Fedora


These commands will download the jenkins repo to yum repositories. and will download import a key.
 

    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

Run this command if you don't have `java`. otherwise skip it.

    yum install fontconfig java-11-openjdk
    
Use this command to install `jenkins` 

    yum install jenkins

### Installing Jenkins in Ubuntu/Debian systems
 
 Run this command to copy the key to local
 
 
    curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
    
 This will add jenkins apt repository entry
 
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
    
 Run these commands to install jenkins
 
    sudo apt-get update
    sudo apt-get install jenkins
 
### Enable and Running Jenkins as service 
 
 
`sudo systemcl enable jenkins`  to enable the server
    
`sudo systemctl start jenkins`  to start the server
    
`sudo systemctl stop jenkins`  to stop the server
    
`sudo systemctl restart jenkins`  to restart the server


## Different types of jobs in jenkins

### Freestyle Project :

This job type is the default project type and is the most flexible to configure.

### Maven Project :

The Maven Project job type helps build Maven projects. However, Jenkins does not provide it as part of the core functionality. As such, it requires you to install the Maven Integration plugin.

### Pipeline :

A pipeline is a way of defining your entire build process using code in the form of a Jenkinsfile.

example of a jenkins pipeline script

#### Scripted-way: 

    node {  
      stage('Build') { 
          // 
      }
      stage('Test') { 
          // 
      }
      stage('Deploy') { 
          // 
      }
    }

#### Declarative-way: 

    pipeline {
        agent any 
        stages {
            stage('Build') { 
                steps {
                    // 
                }
            }
            stage('Test') { 
                steps {
                    // 
                }
            }
            stage('Deploy') { 
                steps {
                    // 
                }
            }
        }
    }

### Multi-Branch Pipeline :

A multi-branch pipeline is an extension of a Pipeline Job. However, it has a way of automatically creating Jenkins pipelines based on source control branches. Jenkins can then automatically discover new branches in the source control, and it can also automatically create a pipeline for that branch.

Learn more on how to create a multi-branch pipeline [Here](https://www.jenkins.io/doc/book/pipeline/multibranch/)

 
