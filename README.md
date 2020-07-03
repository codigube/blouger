# Blouger

> A Serverless blog framework and pipeline using Hugo, Github, AWS S3 and Terraform

## Prerequisite

### Github Personal Access Token

Create a personal access token by following this [Github doc](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token).

The token must have repo and delete_repo permissions at least.

### Install Terraform

Make sure you have Terraform installed by following this [Terraform doc](https://learn.hashicorp.com/terraform/getting-started/install.html)

## Setup

### Provision Github repository

### Create local Git repo

```bash
touch .gitignore
```

[Terraform .gitignore](https://github.com/github/gitignore/blob/master/Terraform.gitignore)

```bash
git init
git add .gitignore
git add .
```



