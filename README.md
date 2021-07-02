# terragrunt-live-infrastructure-sample
> work in progress

## Directory structure
```
.
├── README.md
├── sandbox
│   ├── account.hcl
│   ├── global
│   └── us-east-1
│       ├── dev
│       │   ├── ecs
│       │   │   ├── ecs-cluster
│       │   │   │   └── terragrunt.hcl
│       │   │   └── resource.hcl
│       │   ├── ecs-cluster
│       │   ├── ecs-service
│       │   ├── environment.hcl
│       │   ├── iam
│       │   │   └── resource.hcl
│       │   └── vpc
│       │       ├── resource.hcl
│       │       └── terragrunt.hcl
│       └── region.hcl
└── terragrunt.hcl

10 directories, 10 files
```


## TODO
- [ ] Add CI/CD (Github Actions | Atlantis)
- [ ] Add an ECS stack with all dependencies (IAM, VPC, cluster...)
- [ ] Improve the docs
