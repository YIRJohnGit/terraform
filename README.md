# Terraform Practise

###### ***Prerequisite***
- Setting Up SSH to your repository
- Creating the Public Repository called terraform
- Collect the Repository SSH URL

***Pushing the Files and all its sub directories from Local system to remote system called (terraform)***
```
git init # Initialization the Git Repository
git add . # Adding the Git in Local Repository
git commit -m "first commit" # Committing the File
git branch -M main # Committing to the Main Branch
git remote add origin git@github.com:YIRJohnGit/terraform.git
git push -u origin main # Pushing committed files to the Main Branch
```

###### ***Pushing the specific file in 1 line command***

```
git add . && git commit -am "Adding 3rd line in index " && git push # One Line Statement for Pushing it to Git Repo
```

###### ***Downloading from git repo with ssh link***
```
git clone git@github.com:YIRJohnGit/terraform.git # Cloning to the local system from remote repository
```

###### ***Terraform Basic Commands***
```
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy -auto-approve
```

```
terraform init # dt at start or after adding new provider
terraform validate # Check the syntax
terraform plan # Dry Run, Shows you what will get created
terraform apply -auto-approve #Creates the resources
terraform destroy # bring down the whole infra
terraform refresh  # Update the tfstat file with the observed (current) state
terraform destroy -target <resource-type>.<local-resource-name> # Destroy specific resource
terraform destroy -auto-approve -target aws_instance.myec2
```
