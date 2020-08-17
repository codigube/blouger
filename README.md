# Blouger

> A Serverless blog framework and pipeline using Hugo, Github, AWS S3 and Terraform

## Prerequisite

### Github Personal Access Token

Create a personal access token by following this [Github doc](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token).

The token must have repo and delete_repo permissions at least.

### Install Terraform

Make sure you have Terraform installed by following this [Terraform doc](https://learn.hashicorp.com/terraform/getting-started/install.html)

### Install Hugo

Make sure you have Hugo installed by following this [Hugo doc](https://gohugo.io/getting-started/installing)

## Setup

### Provision Github repository

go to `infra/github` and run terraform

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

### Push first commit

```bash
git remote add origin git@github.com:codigube/blouger.git
git push -u origin master
```

### Create a new site using Hugo

Create a new site in a folder named `blouger`

```bash
hugo new site blouger
```

Add a Theme

```bash
cd blouger
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
```

Add the theme to the site configuration

```bash
echo 'theme = "ananke"' >> config.toml
```

Now we start the Hugo server with drafts enabled

```bash
hugo server -D
```

In the result, you will find the local address to access the new site created.

Now we can build the static pages:

```bash
hugo -D
```

The output is a folder named `public` with all the static assets of the site.

### Setup AWS S3 for hosting static website

go to `infra/aws` and run terraform

### Setup Github Action for deploying website to S3

