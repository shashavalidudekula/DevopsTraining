## Configuring Ansible Using Docker images

### pre-requisites:

  * Docker must be installed in your system
  
### Step 1:

  * Pull the Ubuntu Base OS Docker image using below command

        docker pull ubuntu
        
  * Next run the docker image 

        docker run -itd --hostname ansible --name ansible-master ubuntu /bin/bash
        
    Here `it` represents the docker image must run in interactive mode, `-d` represents it should be run in `dettached` mode.
    
    `--hostname ansible` will assign the name `ansible` to the created `container`
    
    `--name ansible-master` will assign the name `ansible-master` to the container
    
    you can check whether the container is running or not using below command
    
        docker ps
        
    the output should be like this
    
    [!alt DockerContainer](
    
    
    
