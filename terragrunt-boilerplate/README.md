# {{.ProjectName}} - Terragrunt Stack

- **Project**: {{.ProjectName}}
- **Version**: {{.ProjectVersion}}
- **Created**: {{now | date "2006-01-02"}}
- **Created By**: {{env "USER" "Boilerplate User"}}

## Environment Configuration

Environment: Development  
Region: {{.DevelopmentRegion}}  
Account ID: {{.DevelopmentAccountId}}

## Project Structure

```
.
├── infrastructure/
│   ├── root.hcl                                        # Common Terragrunt configuration
│   ├── project.hcl                                     # Project-specific variables
│   └── live/                                           # Environment-specific configurations
│       └── development/
│           └── {{.DevelopmentRegion}}
│               ├── region.hcl
│               └── terragrunt.stack.hcl
└── units/                                              # Reusable Terragrunt units
    ├── vpc/
    └── sg/
```

## Prerequisites

- AWS CLI configured with appropriate credentials
- OpenTofu {{.OpentofuVersion}}
- Terragrunt {{.TerragruntVersion}}
- [mise](https://mise.jdx.dev/) for tool version management

## Getting Started
1. Install mise and required tools:

```bash
mise trust
mise install
```

2. Configure AWS credentials for each account:
```bash
aws configure --profile {{.ProjectName}}-development
```

## Adding New Units
To add a new unit to the stack:

1. Add the unit configuration to `units/` directory
2. Regenerate the stack files or manually add the unit to `terragrunt.stack.hcl`

## Security Considerations
- All environments use IAM role assumption with `terragrunt-execution-role`
- State files are encrypted in S3
- DynamoDB tables are used for state locking
- Separate AWS accounts for each environment

## Troubleshooting
### Common Issues
2. **IAM role not found**: Ensure the `terragrunt-execution-role` exists in each account
3. **Region mismatch**: Verify the region settings in `region.hcl` files