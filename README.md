# Terraform for each example

This terraform code creates a pre-defined a list of security group names using for_each construct in a loop, adding description and egress rule of 0.0.0.0/0

https://developer.hashicorp.com/terraform/language/meta-arguments/for_each

### Prerequisites

Requires terraform version 1.9.5 or higher.

HashiCorp Terraform Installation Instructions: 

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

Requires AWS CLI, AWS Account Access, Environmental Variables configured for AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and AWS_DEFAULT_REGION

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-envvars.html

### Requirements

.gitignore file with:

```bash
# Local .terraform dir
.terraform/*

# terraform state files
*.tfstate
*.tfstate.*

# terraform variable files
*.tfvars
```

### Instructions

```bash
terraform init
terraform plan
terraform apply
```

### Terrafrom Expected Verbose Example
```
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.example: Creating...
aws_instance.example: Still creating... [10s elapsed]
aws_instance.example: Creation complete after 13s [id=i-0aebfb90be3f1bc5f]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```


### Terraform Output Example
```bash

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_security_group.example["web-sg"]: Creating...
aws_security_group.example["cache-sg"]: Creating...
aws_security_group.example["db-sg"]: Creating...
aws_security_group.example["web-sg"]: Creation complete after 3s [id=sg-0d15700a18b4d711f]
aws_security_group.example["cache-sg"]: Creation complete after 3s [id=sg-0fcbbb6f985215472]
aws_security_group.example["db-sg"]: Creation complete after 3s [id=sg-09c18dbefad488f45]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

security_group_ids = {
  "cache-sg" = "sg-0fcbbb6f985215472"
  "db-sg" = "sg-09c18dbefad488f45"
  "web-sg" = "sg-0d15700a18b4d711f"
```

### Post Cleanup
```bash
terraform destroy
```

### License

Copyright 2024 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
