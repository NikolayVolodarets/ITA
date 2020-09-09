# Demo №4. Project name: "Kick Scooter". Main Description.

Project Description
-------------------
As the member of DevOps group at SoftServe IT Academy implement the infrastructure for the microservice Java Web application.

The ["Kick Scooter" application](https://github.com/KickScooterTeam) was being developed by the Java team at the IT Academy. The main purpose of this application is to provide a service for renting electric kick scooters.<br/>

Application deployment was performed on **Google Cloud Platform** and **Microsoft Azure**.<br/>

On **Google Cloud Platform** we created **Cloud SQL** for **PostgreSQL** databases (a separate database was created for each microservice), **Compute Engine** with **Prometheus** and **Grafana** for monitoring, **Compute Engine** with **TeamCity** for CI/CD.<br/>

On **Microsoft Azure** we created **Application Gateway** for web traffic load balancer, **Virtual machine scale set** for microservice application.<br/>

The interaction between the two clouds was performed via **VPN**, which was configured on each cloud.

Link to project repositories
----------------------------
[Link to the GitHub Organization with the project repositories](https://github.com/DP-185-DevOps-PRiS)

Infrastructure
--------------
[Infrastructure](https://drive.google.com/file/d/1BSzMsxgiWq5LLroAv8MNa-9fR1n8nJWQ/view)

Responsibilities
----------------
- configure TeamCity;
- configure auto sync between TeamCity and GitHub repositories;
- configure Auto Scaling for TC build agents with Google Cloud Agents plugin;
- create and configure build configurations to create infrastructure from Terraform scripts;
- create and configure build configurations to build and deploy services;
- prepare a «Golden Copy»;
- write scripts that are responsible the deployment of the application.
