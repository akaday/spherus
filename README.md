# spherus

## Comprehensive Guides and API Documentation

### CI/CD Pipeline Setup and Usage

#### Prerequisites

- Ensure you have the following tools installed:
  - [Terraform](https://www.terraform.io/downloads.html)
  - [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
  - [Python](https://www.python.org/downloads/)

#### Setting Up the CI/CD Pipeline

1. **Clone the repository:**
   ```sh
   git clone https://github.com/akaday/spherus.git
   cd spherus
   ```

2. **Configure Terraform:**
   - Navigate to the `terraform` directory:
     ```sh
     cd terraform
     ```
   - Initialize Terraform:
     ```sh
     terraform init
     ```
   - Validate the Terraform configuration:
     ```sh
     terraform validate
     ```
   - Format the Terraform configuration:
     ```sh
     terraform fmt
     ```
   - Apply the Terraform configuration:
     ```sh
     terraform apply
     ```

3. **Configure Ansible:**
   - Navigate to the `ansible` directory:
     ```sh
     cd ansible
     ```
   - Run the Ansible playbook:
     ```sh
     ansible-playbook playbook.yml
     ```
   - Run Ansible lint checks:
     ```sh
     ansible-lint playbook.yml
     ```

4. **Run Automated Tests:**
   - Navigate to the `tests` directory:
     ```sh
     cd tests
     ```
   - Run unit tests:
     ```sh
     pytest unit
     ```
   - Run integration tests:
     ```sh
     pytest integration
     ```

#### CI/CD Pipeline Stages

1. **Deployment Stage:**
   - Uses Terraform and Ansible configurations to deploy the infrastructure.

2. **Automated Testing Stage:**
   - Runs unit tests and integration tests to ensure code quality.

#### Configuring Firewall Rules, Monitoring, and SSL Certificates

1. **Firewall Rules:**
   - The Ansible playbook includes tasks to configure firewall rules using `ufw` to allow traffic on ports 80 and 443.

2. **Monitoring:**
   - The Ansible playbook includes tasks to set up monitoring using `prometheus` and `grafana`.

3. **SSL Certificates:**
   - The Ansible playbook includes tasks to configure SSL certificates using `certbot` to obtain and install certificates for your domain.

For more detailed information, refer to the respective directories and their documentation.
