# terragrunt-live-infrastructure-sample
> work in progress

## Directory structure
```
.
├── account.hcl
├── global
└── us-east-1
    ├── dev
    │   ├── ecs
    │   │   ├── ecs-cluster
    │   │   │   └── terragrunt.hcl
    │   │   └── resource.hcl
    │   ├── environment.hcl
    │   ├── iam
    │   │   └── resource.hcl
    │   └── vpc
    │       ├── resource.hcl
    │       └── terragrunt.hcl
    └── region.hcl

7 directories, 8 files
```