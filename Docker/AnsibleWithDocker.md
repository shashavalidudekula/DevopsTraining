## Configuring Ansible Using Docker images

### Pre-requisites:

  * Docker must be installed in your system
  
### Step 1: creating the Ansible-master and Ansible-hosts

  * Pull the CentOS 7 Base OS Docker image using below command

        docker pull centos/systemd
        
     Here I am using `centos/systemd` image because it will allow us to use the systemd in the container
        
  * Next run the docker image 

        docker run -itd --privileged --hostname ansible --name ansible-master centos/systemd /usr/sbin/init
        
    Here if you dont specify `/usr/sbin/init` you will be unable to perform `systemctl` command. 
    
    Here `it` represents the docker image must run in interactive mode, `-d` represents it should be run in `dettached` mode.
    
    `--hostname ansible` will assign the name `ansible` to the created `container`
    
    `--name ansible-master` will assign the name `ansible-master` to the container
    
    you can check whether the container is running or not using below command
    
        docker ps
        
    the output should be like this
    
    ![alt DockerContainer](https://github.com/shashavalidudekula/DevopsTraining/blob/main/Docker/Images/docker%20container.png)
    
  * Next, Create the ansible host containers in the same way. here i have created two ansible host containers 

    ![alt AnsiblehostConatiners](https://github.com/shashavalidudekula/DevopsTraining/blob/main/Docker/Images/anssible-host-containers.png)
    
    
### Step 2: Installing Necessary packages in Master and Hosts

 As we have downloaded the Ubuntu base os docker image.. it doesm't come with necessary packages to work with.. 
  
  * First we need to attach container to install necessary packages in them

    we can enter into containers in two ways
    
        docker attach ansible
         
        (OR)
        
        docker exec -itd ansible /bin/bash
  
  * After entering into conatiners we need to update the apt repo using

         yum update -y
         
  * Now install necessart packages using apt

        yum install sudo openssh-server python3 iproute iputils-ping vim 
        
  Note:  Install these packages in Server and Hosts containers.  
    
