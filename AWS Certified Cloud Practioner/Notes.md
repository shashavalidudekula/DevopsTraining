## What is Cloud Computing

the practice of using a network of remote servers hosted on the Internet to store, manage,and process data, rather than a local server or a personal computer.

| On-Premise | Cloud Providers |
|------------|-----------------|
| You own the servers | Someone else owns the servers |
| You hire the IT people | Someone else hires the IT people |
| You pay or rent the real-estate | Someone else pays or rents the real-estate |
| You take all the risk | You are responsible for your configuring cloud services and code,someone else takes care of the rest.|

### Evolution of Cloud Hosting

* Dedicated Server
    * One Physical Machine dedicated to a single Business
    * Runs a single web-app/site
    * Very Expensive, High Maintenance, High Security
 
* Virtual Private Server (VPS)
    * One Physical Machine dedicated to a single business
    * The physical machine is virtualized into sub-machines
    * Runs multiple web-apps/sites
    * Better Utilization and Isolation of Resources

* Shared Hosting
    * One Physical Machine, Shared by Hundred of businesses
    * Relies on most tenants under utilizing their resources
    * Very Cheap, Limited Functionality, Poor Isolation
 
* Cloud Hosting
    * Multiple physical machines that act as one system.
    * The system is abstracted into multiple cloud services
    * Flexible, Scalable, Secure, Cost-Effective, High-Configurability


## What is AWS?

AWS was launched in 2006* and is the leading cloud service provider in the world.

`Simple Queue Service(SQS)` was the first AWS service launched for public use in 2004

`Simple Storage Service(S3)` was launched in March of 2006

`Elastic Compute Cloud(EC2)` was launched in August of 2006

### What is a Cloud Service Provider (CSP) ?

A Cloud Service Provider(CSP)is a company which

* Provides multiple Cloud Services e.g. tens to hundreds of services

* Those Cloud Services can be chained together to create cloud architectures

* Those Cloud Services are accessible via Single Unified API eg.AWS API

* Those Cloud Services utilized metered billing based on usage e.g. per second,per hour

* Those Cloud Services have rich monitoring built in eg.AWS CloudTrail

* Those Cloud Services have an Infrastructure as a Service(IaaS)offering

* Those Cloud Services offers automation via Infrastructure as Code(IaC)

### Landscape of CSPs

* `Tier-1(Top Tier)` -Early to market,wide offering,strong synergies between services, well recognized in the industry

   AWS, Microsoft Azure, GCP, Alibaba Cloud
   
* `Tier-2(Mid Tier)` -Backed by well-known tech companies,slow to innovate and turned to specialization.

   IBM Cloud, Oracle Cloud , Rackspace(OpenStack)
    
* `Tier-3(Light Tier)` -Virtual Private Servers(VPS)turned to offer core IaaS offering. Simple,cost-effective
   
   Vultr, Digital Ocean, Linode
   
#### Gartner Magic Quadrant for Cloud

Magic Quadrant(MQ)is a series of market research reports published by IT consulting firm Gartner that rely on proprietary qualitative data analysis methods to demonstrate market trends,such as direction, maturity and participants.

### Common Cloud Services

A cloud service provider can have hundreds of cloud services that are grouped into various types of services.

The four most common types of cloud services(the 4 core)for Infrastructure as a Service(laaS)would be:

   1. `Compute`
   
      Imagine having a virtual computer that can run application,programs and code.

   2. `Networking`
   
      Imagine having virtual network defining internet connections or network isolations between services or outbound to the internet
      
   3. `Storage`
   
      Imagine having a Virtual hard-drive that can store files
      
   4. `Databases`
   
      Imagine a Virtual database for storing, reporting data or a database for general purpose web-application
      
### Evolution of Computing

* Dedicated
   * A physical server wholly utilized by a single customer.
   * You have to guess your capacity
   * You'll overpay for an under-utilized server
   * You can't vertical scale,you need a manual migration
   * Replacing a server is very difficult
   * You are limited by your Host Operating System
   * Multiple apps can result in conflicts in resource sharing
   * You have a*guarantee of security, privacy,and full utility of underlying resources

* Virtual Machines (VMs)  
   * You can run multiple Virtual Machines on one machine.
   * Hypervisor is the software layer that lets you run the VMs
   * A physical server shared by multiple customers
   * You are to pay for a fraction of the server
   * You'll overpay for an underutilized Virtual Machine
   * You are limited by your Guest Operating System
   * Multiple apps on a single Virtual Machine can result in conflicts in resource sharing
   * Easy to export or import images for migration
   * Easy to Vertical or Hortizonalty scale

* Containers
   * Virtual Machine running multiple containers
   * Docker Deamon is the name of the software layer that
   * Lets you run multiple containers.
   * You can maximize the utilize of the available capacity which is more cost-effective
   * Your containers share the same underlying OS so containers are more efficient than multiple VMs
   * Multiple apps can run side by side without being limited to the same OS requirements and will not cause conflicts during resource sharing
   
* Functions
   * Are managed VMs running managed containers.
   * Known as Serverless Compute
   * You upload a piece of code, choose the amount of memory and duration.
   * Only responsible for code and data, nothing else
   * Very cost-effective, only pay for the time code is running,VMs only run when there is code to be executed
   * Cold Starts is a side-effect of this setup
   

### Types of Cloud Computing
   
![alt TypeofCloudComputing](https://github.com/shashavalidudekula/DevopsTraining/blob/main/AWS%20Certified%20Cloud%20Practioner/images/Types%20of%20Cloud%20Computing.png)
