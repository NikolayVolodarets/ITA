# Demo №3. Project name: "Kick Scooter". Main Description.

Project Description
-------------------
As the member of DP-185 DevOps group implement the infrastructure for the microservice Java Web application.

The ["Kick Scooter" application](https://github.com/KickScooterTeam) is being developed by the Java team at the IT Academy. The main purpose of this application is to provide a service for renting electric kick scooters.

Application deployment is performed on **Google Cloud Platform**. Infrastructure creation occurs through the launch of **Ansible** playbook. A separate **Gitlab** server is used for **CI/CD**. All microservices are located on the same server in **Docker** containers. **Cloud Load Balancing** is used for load balancing. All microservices work with one database, which is located on **Cloud SQL**. Monitoring of each service with **Zabbix** and drawing graphics with **Grafana** is provided.

Infrastructure
--------------
![infrastructure](https://github.com/NikolayVolodarets/ITA/blob/master/Demo3/Infrastructure.jpg)

Responsibilities
----------------
1. Configure GitLab
   - Install GitLab on Google Cloud Platform
   - Install GitLab Runner
   - Register a shared Runner in shell
   - Configure webhook with GitHub repositories
   - Install the necessary programs for the next step
2. Configure GitLab CI/CD for build and deploy
   - Write .gitlab-ci.yml, which is responsible for building the application, deployment and update the database
   - Write deploy.sh, which is responsible for deploying the application
   - Write Liquibase scripts to update database
3. Configure GitLab CI/CD for infrastructure creation
   - Write .gitlab-ci.yml, which is responsible for creating infrastructure

Step by Step Guide
------------------
[How to configure GitLab CI/CD on GCP ?](https://drive.google.com/open?id=1-AE0tgx1dmLa3Mt5e3RPpmjFId9YbJl7)
