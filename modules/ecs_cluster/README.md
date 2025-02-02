<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |
| [aws_iam_instance_profile.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ec2_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ec2_ssm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lb.internal](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.internal](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_security_group.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.lb_internal](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.main_ecs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ingress_443](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_80](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.internal_ingress_443](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.internal_ingress_80](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.subnet_ranges](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_ssm_parameter.lb_arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.lb_internal_arn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.lb_internal_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.lb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_providers"></a> [capacity\_providers](#input\_capacity\_providers) | ECS Cluster capacity providers | `list(string)` | <pre>[<br>  "FARGATE",<br>  "FARGATE_SPOT"<br>]</pre> | no |
| <a name="input_lb_active"></a> [lb\_active](#input\_lb\_active) | Create or not Load balancer | `bool` | n/a | yes |
| <a name="input_lb_internal_active"></a> [lb\_internal\_active](#input\_lb\_internal\_active) | Create or not Internal Load balancer | `bool` | n/a | yes |
| <a name="input_load_balancer_internal"></a> [load\_balancer\_internal](#input\_load\_balancer\_internal) | Internal or external lb | `string` | n/a | yes |
| <a name="input_load_balancer_private_subnets"></a> [load\_balancer\_private\_subnets](#input\_load\_balancer\_private\_subnets) | Load Balancer Private Subnets | `list(string)` | n/a | yes |
| <a name="input_load_balancer_public_subnets"></a> [load\_balancer\_public\_subnets](#input\_load\_balancer\_public\_subnets) | Load Balancer Public Subnets | `list(string)` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Type of Load Balancer | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project Name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Project TAGs | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internal_load_balancer_dns"></a> [internal\_load\_balancer\_dns](#output\_internal\_load\_balancer\_dns) | Internal Load Balancer DNS |
| <a name="output_load_balancer_dns"></a> [load\_balancer\_dns](#output\_load\_balancer\_dns) | Load Balancer DNS |
| <a name="output_load_balancer_internal_listner"></a> [load\_balancer\_internal\_listner](#output\_load\_balancer\_internal\_listner) | Internal Load Balancer Listener |
| <a name="output_load_balancer_listner"></a> [load\_balancer\_listner](#output\_load\_balancer\_listner) | Load Balancer Listener |
| <a name="output_ssm_lb_arn"></a> [ssm\_lb\_arn](#output\_ssm\_lb\_arn) | Load Balancer ARN |
| <a name="output_ssm_lb_internal_arn"></a> [ssm\_lb\_internal\_arn](#output\_ssm\_lb\_internal\_arn) | Internal Load Balancer ARN |
<!-- END_TF_DOCS -->