### Terraform Deployment Report


### Step 1: Initialization
Command: terraform init

Purpose: Initializes Terraform in the working directory.
Screenshot: ![terraform_initialization](screenshots/creating_terraform_init.png)
### Step 2: Configuration
Files: main.tf, variables.tf, outputs.tf

Purpose: Defines infrastructure components using Terraform configuration files.

### Step 3: Plan Generation
Command: terraform plan 

Purpose: Generates an execution plan describing what Terraform will do.
Screenshot:![plan_preview](./output_of%20terraform_plan.png)

### Step 4: Apply Changes
Command: terraform apply 

Purpose: Applies the execution plan to make changes to infrastructure.
Screenshot:![terraform_apply](screenshots/output_of_terraform_apply.png)

### Step 5: Destroy Resources 
Command: terraform destroy

Purpose: Destroys all resources created by Terraform.

### creating KCVPC
![KCVP](screenshots/creating_KCVCP.png)

### public subnet
![public_subnet](screenshots/creating_public_subnet.png)

### private subnet
![private_subnet](screenshots/creating_private_subnet.png)

### public security group
![public_sg](screenshots/creating_punlic_sg.png)

### private ssecurity group
![private_sg](screenshots/creating_private_sg.png)

### public route table
![public_route_table](screenshots/creating_public_routetable.png)

### private route table
![private_route_table](screenshots/creating_private_routetable.png)

### networkACL
## with public subnet
![NACL](screenshots/creating_networkACL_publicsubnet.png)
## with private subnet
![NACL](screenshots/creating_networkACL_privatesubnet.png)
