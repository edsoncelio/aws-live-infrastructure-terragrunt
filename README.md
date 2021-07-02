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
│       │   │   ├── cluster
│       │   │   │   └── terragrunt.hcl
│       │   │   ├── resource.hcl
│       │   │   └── service
│       │   ├── environment.hcl
│       │   ├── iam
│       │   │   └── resource.hcl
│       │   └── vpc
│       │       ├── resource.hcl
│       │       └── terragrunt.hcl
│       └── region.hcl
└── terragrunt.hcl

9 directories, 10 files
```


## TODO
- [ ] Add CI/CD (Github Actions | Atlantis)
- [ ] Add an ECS stack with all dependencies (IAM, VPC, cluster...)
- [ ] Improve the docs
