# Project Overview
This is a AWS cluster provisioning and application deployment project using Terraform.
This project demonstrates automated AWS infrastructure provisioning and application deployment using Terraform.

# 1. Architecture
Internet
   │
Security Group
   │
EC2 Instance
   │
Docker Container (nginx)

# 2. Features
- Infrastructure provisioning using Terraform
- Modular Terraform architecture
- Automated EC2 provisioning
- Automated Docker application deployment
- AWS VPC and networking setup

# 3. Tech stack
- Terraform
- AWS EC2
- Docker
- Ubuntu Linux

# 4. Deployment steps
terraform init
terraform plan
terraform apply

# 5. Future Improvements
- Kubernetes deployment support
- CI/CD integration
- Terraform remote backend
- Auto scaling support
- Monitoring integration


Terraform Modules
modules/
├── network/
├── security-group/
└── ec2/


network

Creates:
VPC
subnet
internet gateway
route table
route table association
security-group

Creates:
SSH access rule
HTTP access rule
outbound internet access
ec2

Creates:
Ubuntu EC2 instance
Docker installation
automatic NGINX deployment using user data
Deployment Steps
Initialize Terraform
terraform init
Validate Terraform Configuration
terraform validate
Review Infrastructure Plan
terraform plan
Deploy Infrastructure
terraform apply
Destroy Infrastructure
terraform destroy
Verification

The following checks were performed after deployment:

Verify EC2 Instance

Checked AWS EC2 console to confirm:

instance running state
public IP assignment
successful instance launch
Verify Application Access

Opened application in browser using EC2 public IP:

http://13.201.8.159

Verified NGINX welcome page was accessible.

Verify Docker Container

Connected to EC2 instance using SSH:
ssh -i ~/.ssh/terraform-aws-key ubuntu@13.201.8.159

Checked running containers:
docker ps
Verified NGINX container was running.
Verify User Data Execution

Checked cloud-init logs:
cat /var/log/cloud-init-output.log


Future Improvements
Kubernetes deployment support
Helm integration
CI/CD pipeline integration
Terraform remote backend configuration
Load balancer integration
Auto Scaling support
Monitoring using Prometheus and Grafana
Multi-environment deployment setup
Infrastructure state management improvements