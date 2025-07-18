# Boilerplate Templates for Terragrunt

Creates AWS infrastructure templates using Terragrunt.

## What is Boilerplate?

A tool that creates files from templates. [See docs](https://github.com/gruntwork-io/boilerplate).

## Template Options

- **single-account**: Sets up infrastructure within one AWS account. Good for simple projects or development environments.
- **multy-account**: Manages infrastructure across multiple AWS accounts. Used for production setups with separate accounts for different environments.
- **stack**: Creates a single Terragrunt stack deployment. Best for standalone services or small components.

The main branch will guide you to choose the right template option.

## How to use

1. Install [Boilerplate](https://github.com/gruntwork-io/boilerplate#install)

2. Run this command (no need to clone this repo - use the URL directly):
```bash
boilerplate --template-url "github.com/codefactoryhu/boilerplate-aws//terragrunt-boilerplate?ref=main" --output-folder ./my-project
```
3. Edit the generated files for your project