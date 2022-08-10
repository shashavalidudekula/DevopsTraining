#### What is Ansible?

> Ansible is an open-source platform that facilitates configuration management, task automation, or application deployment. It is a valuable DevOps tool. It was written in Python and powered by Red Hat.

#### What are the advantages of Ansible? 

>  * Agentless – Unlike puppet or chef there is no software or agent managing the nodes.
> * Python – Built on top of python which is very easy to learn and write scripts and one of the robust programming languages.
> * SSH – Passwordless network authentication which makes it more secure and easy to set up.
> * Push architecture – The core concept is to push multiple small codes to the configure and run the action on client nodes.
> * Setup – This is very easy to set up with a very low learning curve and any open source so that anyone can get hands-on.
> * Manage Inventory – Machines’ addresses are stored in a simple text format and we can add different sources of truth to pull the list using plugins such as Openstack, Rackspace, etc.

#### How does Ansible work ? 

> Ansible is broken down into two types of servers: controlling machine and nodes. Ansible is installed on the controlling machine and the controlling machines manage the nodes via SSH. 
> 
> Ansible works by connecting to your nodes and pushing out small programs—called modules—to these nodes. Modules are used to accomplish automation tasks in Ansible. These programs are written to be resource models of the desired state of the system. Ansible then executes these modules and removes them when finished.

#### What is a module? Explain Ansible modules in detail?

> A module is a reusable, standalone script that Ansible runs on your behalf, either locally or remotely. Modules interact with your local machine, an API, or a remote system to perform specific tasks like changing a database password or spinning up a cloud instance. Each module can be used by the Ansible API, or by the ansible or ansible-playbook programs. A module provides a defined interface, accepts arguments, and returns information to Ansible by printing a JSON string to stdout before exiting.
> 
>There are 2 types of modules in Ansible:
> 
> **Core Modules:**
>   
> The core Ansible team is responsible for maintaining these modules thus these come with Ansible itself. The issues reported are fixed on priority than those in the “extras” repo.
>
> **Extras Modules:**
> 
> The Ansible community maintains these modules so, for now, these are being shipped with Ansible but they might get discontinued in the future. These can be used but if there are any feature requests or issues they will be updated on low priority.
> 
> Now popular extra modules might enter into the core modules anytime. You may find these separate repos for these modules as ansible-modules-core and ansible-modules-extra respectively
>
> [10 modules every beginner must know](https://opensource.com/article/19/9/must-know-ansible-modules?extIdCarryOver=true&sc_cid=701f2000001OH7TAAW)

#### 	What is ansible.cfg file?

> ansible.cfg is the brain and the heart of Ansible, the file that governs the behavior of all interactions performed by the control node. 
> 
> By default Ansible reads its configuration file in /etc/ansible/ansible.cfg , however this behavior can be altered. The recommended practice is either to have an ansible.cfg in your current project working directory or to set it as an environment variable. One way to determine which configuration file ansible is using is to use the $ansible --version command, you can also run your ansible commands with the -v option.
> 
> When it comes to the order of precedence, 
> <pre>
>   * ANSIBLE_CONFIG               ( ENV Varaible )                                     --> Highest Preference
>   * ansible.cfg                  ( config file in current project/working dir ) 
>   * .ansible.cfg                 ( will be in user's home dir )
>   * /etc/ansible/ansible.cfg     ( Default config file location )                     --> least preference
> </pre>

#### 
