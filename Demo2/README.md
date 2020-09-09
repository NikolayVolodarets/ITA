# Demo №2. Project name: "DriveUp". Main Description.

Links
-----
[Link to the original repository with the application](https://github.com/IllyaSymonets/DriveUp)

Project Description
-------------------
As the member of DP-185 DevOps group implement the infrastructure for the **microservice** Java Web application.

Application deployment is performed on **Google Cloud Platform**. Infrastructure creation occurs through the launch of **Ansible** playbook. A separate **GitLab** server is used for **CI/CD**. Each microservice is allocated on a separate server. All microservices work with one database, which is on a separate server. Monitoring of each service with **Zabbix** and drawing graphics with **Grafana** is provided. 

Infrastructure
--------------
![infrastructure](https://github.com/NikolayVolodarets/ITA/blob/master/Demo2/Infrastructure.jpg)

Responsibilities
----------------
1. Configure GitLab
   - Install GitLab on Google Cloud Platform
   - Install GitLab Runner
   - Install Docker
   - Register a shared Runner in Docker
   - Configure webhook with GitHub repositories
2. Configure GitLab CI/CD for build and deploy
   - Write .gitlab-ci.yml, which is responsible for building the application and deployment
   - Write deploy.sh, which is responsible for deploying the application
3. Configure GitLab CI/CD for infrastructure creation
   - Write .gitlab-ci.yml, which is responsible for creating infrastructure

About files in the repository
-----------------------------
There are two files in the **Build & Deploy** folder. File **.gitlab-ci.yml** is responsible for the application CI/CD and runs on a separate Gitlab server. The **deploy.sh** script restarts the old version of the application.

Step by Step Guide
------------------
[How to configure GitLab CI/CD on GCP ?](https://drive.google.com/open?id=10L8ydd0GP-3NoWC6tQFBW9eUYmcNMvDl)
