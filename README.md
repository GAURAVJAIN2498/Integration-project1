# Integration-project1

Automated Web Server Deployment with Jenkins, Terraform, and Ansible
Project Overview
This project demonstrates a fully automated workflow for provisioning and configuring a web server on AWS using Jenkins, Terraform, and Ansible. With a single click, the process launches an EC2 instance, sets up necessary permissions, and deploys a web server—all triggered remotely via a generated link.

Workflow
Remote Trigger: Jenkins generates a unique URL to trigger the job remotely.
Terraform Integration:
Terraform is used to provision an EC2 instance.
IAM user credentials (access and secret keys) are utilized securely.
Permissions (jenkins:jenkins ownership and chmod 777) are applied to required files.


Ansible Automation:
Terraform extracts the EC2 instance's public key to create an Ansible inventory file.
An Ansible playbook configures the instance and deploys a web server using dnf.

Features
One-Click Deployment: Fully automated end-to-end process triggered by a remote Jenkins job.
AWS Integration: Secure provisioning of EC2 instances with IAM credentials.
Ansible Configuration: Automated web server setup using modern configuration management practices.
Seamless Orchestration: Tight integration of Jenkins, Terraform, and Ansible for efficient DevOps workflows.


Technologies Used
Jenkins: Remote job triggering and CI/CD orchestration.
Terraform: Infrastructure as Code (IaC) for EC2 provisioning.
Ansible: Configuration management and server setup.
AWS: EC2 instances and IAM roles for cloud resources.

Setup Instructions
Jenkins Configuration:

Install the necessary plugins (e.g., Terraform, Ansible).
Configure the job to allow remote triggering.
Terraform Deployment:

Use the provided Terraform scripts to set up your AWS resources.
Ensure IAM credentials are securely configured.
Ansible Playbook:

Define roles and tasks for web server deployment.
Use the generated inventory file to target the newly created EC2 instance.
Trigger the Process:

Use the generated URL to trigger the Jenkins job and watch the workflow in action!
