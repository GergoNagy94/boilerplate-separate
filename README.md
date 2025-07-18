# Boilerplate Templating Project For Terragrunt by Code Factory

This project provides reusable Terragrunt templates that help you quickly set up infrastructure across different environments.

## What is Boilerplate?

[Boilerplate](https://github.com/gruntwork-io/boilerplate) is a tool that generates files and folders from templates, allowing you to create consistent project structures with customizable variables.

## How to use this repo:

### Prerequisites
- Install [Boilerplate](https://github.com/gruntwork-io/boilerplate#install)
- Install [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)

### Steps to generate your project

1. **Generate your project**: Run the following command to create a new project from these templates:
   ```bash
   boilerplate --template-url "github.com/codefactoryhu/boilerplate-aws//terragrunt-boilerplate?ref=main" \
   --output-folder ~/Desktop/single-acc/
   ```

2. **Customize as needed**: Edit the generated files to match your specific infrastructure requirements

---