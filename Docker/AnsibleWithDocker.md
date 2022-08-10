## Configuring Ansible Using Docker images

### Pre-requisites:

  * Docker must be installed in your system
  
### Step 1: creating the Ansible-master and Ansible-hosts

  * Pull the CentOS 7 Base OS Docker image using below command

        docker pull centos/systemd
     
     `centos/systemd` has `systemd` enabled by default.
        
  * Next run the docker image 

        docker run -d --privileged --hostname ansible --name ansible-master -p 80:80 centos/systemd
        
    To run `systemctl` `service` commands inside the container you must mention flag `--privileged` flag 
    
    Here `-d` represents it should be run in `dettached` mode and `-p 80:80` will map the port 80 of the host to port 80 of the ansible container.
    
    `--hostname ansible` will assign the name `ansible` to the created `container`
    
    `--name ansible-master` will assign the name `ansible-master` to the container
    
    you can check whether the container is running or not using below command
    
        docker ps
        
    the output should be like this
    
    ![alt DockerContainer](https://github.com/shashavalidudekula/DevopsTraining/blob/main/Docker/Images/docker%20container.png)
    
  * Next, Create the ansible host containers in the same way. here i have created two ansible host containers 

    ![alt AnsiblehostConatiners](https://github.com/shashavalidudekula/DevopsTraining/blob/main/Docker/Images/anssible-host-containers.png)
    
    Map the different Host ports to containers.. example as we already mapped the `port 80` of host to `ansible master` container we can not map `port 80` of host to another container. so at the time of creating host containers map like this `-p 81:80` and `-p 82:80`. these will map the `port 81 and port 82` of the host to aniblehost1 and ansiblehost2. 
    
### Step 2: Installing Necessary packages in Master and Hosts

 As we have downloaded the Ubuntu base os docker image.. it doesm't come with necessary packages to work with.. 
  
  * First we need to attach container to install necessary packages in them

    we can enter into containers in two ways
    
        docker attach <ansible-master-conatiner-id- or-name>
         
        (OR)
        
        docker exec -it <ansible-master-conatiner-id-or-name> /bin/bash
  
  * After entering into conatiners we need to update the yum repo using

         yum update -y
         
  * Now install necessary packages using yum

        yum install sudo openssh-server openssh-clients initscripts python3
        
  Note:  Install these packages in Server and Hosts containers.  
    
