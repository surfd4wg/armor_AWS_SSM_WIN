# armor_AWS_SSM_WIN

The Terraform Scripts create the EC2 Instances, and auto installs the AWS SSM agent.
- Download the terraform scripts to a subdirectory
- terraform init; terraform plan
- terraform apply -auto-approve
- 
Installing the Armor Agent happens through the use of the AWS SSM Run Command.
- Log into the AWS Console, and navigate to SSM - System Manager
- Scroll to the bottom and click on Documents
- Create Document -> Run Command
- Give it a unique name
- Select the YAML document type
- Copy and Paste in the contents of SSMv17.yml
- Create Document

Run the .yml document
- in SSM - Systems Manager select Documents -> Owned by me -> Click on your .yml document
- Run Command
- Enter your Armor License Key
- Click on "Choose instances manually", all of your EC2 instances that have the SSM Agent install will show up. Select them.
- Click on Run.
