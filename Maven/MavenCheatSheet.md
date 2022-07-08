Apache Maven
============

Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.

More information can be found on [Apache Maven Homepage](https://maven.apache.org/)

### Pre-rquisites:

Java (jdk recommended) must be installed.

Install Maven - Redhat
------------------------------------

### Download Maven:
    
1. Swtich to root user using 
  
        sudo su - 

2. Change the path to /opt directory using
  
        cd /opt/

3. Download maven using 

        wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip

    *  If you don't have `wget`. Install it using `yum install wget -y`
                                                     
    *  You can get the latest version of maven from [here](https://maven.apache.org/download.cgi)

### Install & Configure Maven:
                          
1. Extract the zip file using 

        unzip apache-maven-3.8.6-bin.zip
     
    *  if you don't have `unzip`. Install it using `yum install unzip -y`

2. Set the class path/ Environmental Variable:

#### For specific user: 

1. Open `bash_profile` which will be in users home dir using 

        vi ~/.bash_profile

2. Copy below lines to the bottom of the `bash_profile` and save the file using `:wq` 

        export M2_HOME=/opt/apache-maven-3.8.6
  
        export PATH=$PATH:$M2_HOME/bin

3. After making changes to `bash_profile` reload the file using 

        source ~/.bash_profile 

#### For All Users:

1. Open `/etc/profile` which will be in `/etc/` using 

        vi /etc/profile

2. Copy below lines to the bottom of the `/etc/profile` file and save the file using `:wq` 

        export M2_HOME=/opt/apache-maven-3.8.6
  
        export PATH=$PATH:$M2_HOME/bin

3. After making changes to `/etc/profile` reload the file using 

        source /etc/profile
                                                     

Run the following command to verify that Maven is installed successfully on your machine 

        mvn --version

Install Maven - CentOS
------------------------------------
    sudo yum install maven

Install Maven - Ubuntu
------------------------------------
    sudo apt install maven

For more information see: [Installing Apache Maven](https://maven.apache.org/install.html)


Standard Directory Structure of Maven
---------------------------------------
<pre>
app-name
|-- pom.xml
`-- src
    |-- main
    |   `-- java
    |       `-- com
    |           `-- company
    |               `-- App.java
    `-- test
        `-- java
            `-- com
                `-- company
                    `-- AppTest.java
</pre>

See: [Standard Directory Layout](https://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html##)

## Maven Life Cycle

Maven is based around the central concept of a build lifecycle. 

There are three built-in build lifecycles:

* Clean

    * The clean lifecycle handles project cleaning

* Default

    * The default lifecycle handles your project deployment

* Site

    * The site lifecycle handles the creation of your project's web site

Each of these build lifecycles is defined by a different list of build phases, wherein a build phase represents a stage in the lifecycle.

<table>
<tr><td><code>validate</code></td><td>validate the project is correct and all necessary information is available</td></tr>
<tr><td><code>compile</code></td><td>compile the source code of the project</td></tr>
<tr><td><code>test</code></td><td>test the compiled source code using a suitable unit testing framework. These tests should not require the code be packaged or deployed</td></tr>
<tr><td><code>package</code></td><td>take the compiled code and package it in its distributable format, such as a JAR</td></tr>
<tr><td><code>integration-test</code></td><td>process and deploy the package if necessary into an environment where integration tests can be run</td></tr>
<tr><td><code>verify</code></td><td>run any checks to verify the package is valid and meets quality criteria</td></tr>
<tr><td><code>install</code></td><td>install the package into the local repository, for use as a dependency in other projects locally</td></tr>
<tr><td><code>deploy</code></td><td>done in an integration or release environment, copies the final package to the remote repository for sharing with other developers and projects</td></tr>
</table>

For a complete list of the lifecycle phases, refer to the [Lifecycle Reference](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html#Lifecycle_Reference)

