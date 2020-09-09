# Demo №1. Project name: "ProductList"

Project Description
-------------------
As the member of DP-185 DevOps group implement the infrastructure for the monolithic Java Web application.

Application deployment is performed on **Oracle VM Virtualbox**. Infrastructure creation is done manually. **Jenkins** is used for CI/CD. Two copies of the application are located on two separate servers. **Nginx** is used for load balancing. Both application servers work with the same database, which is on a separate server. Each service is monitored with **Splunk**. 

Infrastructure
--------------
![infrastructure](https://github.com/NikolayVolodarets/ITA/blob/master/Demo1/Infrastructure.jpg)

Responsibilities
----------------
1. Configure Application VMs: install Java, install and configure Tomcat, write script for future server configuration automation.
2. Configure MySQL VM: install and configure MySQL Server, create database, create needed users.
3. Configure Java Web Application: reconfigure application to maven project.

About files in the repository
-----------------------------
The **Application** folder contains application files and the necessary scripts to update the database using the Liquibase utility.

The **Configure Mysql Server** folder contains instructions and scripts to configure the database server.

The **Configure Web Server** folder contains instructions and scripts to configure the two application servers.
