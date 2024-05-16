#!/bin/bash

# Install Terraform
echo "INSTALLING TERRAFORM..."
wget https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip
unzip terraform_1.7.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/
rm terraform_1.8.3_linux_amd64.zip

# Install Ansible
echo "INSTALLING ANSIBLE ...."
sudo dnf update
sudo dnf install software-properties-common -y
sudo add-dnf-repository --yes --update ppa:ansible/ansible
sudo dnf install ansible -y
echo "INSTALLING ANSIBLE COMPLETED ...."

# Initialize and apply Terraform
cd Terraform
terraform init
terraform apply -auto-approve

# # Get the EC2 instance public IP and update Ansible inventory
# EC2_IP=$(terraform output -raw instance_public_ip)
# cd ../ansible
# echo "[ec2]" > hosts
# echo "$EC2_IP ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa" >> hosts

# # Run Ansible playbook
# ansible-playbook -i hosts playbook.yml
