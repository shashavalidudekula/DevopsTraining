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

