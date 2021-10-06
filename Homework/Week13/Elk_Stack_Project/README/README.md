## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(https://github.com/BluFlcn/Jason-Scherer-Cyber-Security-Bootcamp/blob/main/Homework/Week13/Elk_Stack_Project/Elk%20Stack%20Diagram.drawio.png)

![Elk Stack Diagram](ElkStackDiagram.drawio.PNG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the file may be used to install only certain pieces of it, such as Filebeat.

 (https://github.com/BluFlcn/Jason-Scherer-Cyber-Security-Bootcamp/blob/main/Homework/Week13/Elk_Stack_Project/Elk_Stack_Project/Ansible/filebeat-playbook.yml)

![Filebeat Playbook](Filebeatplaybookyml.PNG)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient, in addition to restricting traffic to the network.
- Load balancers protect the system from DDoS attacks by shifting attack traffic.
- Load balancing contributes to the availability of service in regard to the CIA triad.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the jumpbox and system network.
- Filebeat watches for changes to files on the machine
- Metricbeat records metrics from the OS and services on running on the server.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name      | Function | IP Address | Operating System |
|-----------|----------|------------|------------------|
| Jump Box  | Gateway  | 10.0.0.7   | Linux            |
| Web-1     | Webserver| 10.0.0.5   | Linux            |
| Web-2     | Webserver| 10.0.0.6   | Linux            |
| ELK-Server| Webserver| 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- The public IP of the Jumpbox is 13.68.151.135 

Machines within the network can only be accessed by SSH.
- Personal computer using private IP. 

A summary of the access policies in place can be found in the table below.

| Name      | Publicly Accessible | Allowed IP Addresses |
|-----------|---------------------|----------------------|
| Jump Box  |     No              | 10.0.0.1 10.0.0.2    |
| Web-1     |     No              | 10.0.0.1             |
| Web-2     |     No              | 10.0.0.1             |
| Elk-Server|     No              | 10.0.0.1             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Ansible allows the deployment of multiple servers using a single playbook.

The playbook implements the following tasks:
- Install docker.io
- Install Python-pip
- Install pip3
- Install docker container
- Increase Virtual Memory
- Launch docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Docker ps](DockerPSImage.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._