# ACA Linuxtips ECS

Repositório do curso de arquitetura de Containers - ECS

Foram criados modulos para cada funcionalidade. A intenção é ir melhorando aos modulos.

A metodologia aplicada até agora é, criar tudo o que é apresentado em aula. E depois seguir na criação do módulo como desafio adicional.

O conteúdo das aulas vão estar disponíveis neste repo em releases a parte ou pastas, pretendo organizar tudo em pastas para os próximos desafios:

Day 2 - https://github.com/jhtoigo/linuxtips-aca-ecs/tree/v1.0.0

Abaixo opções adicionais para não criar alguns recursos que as vezes não são necessários em determinados testes, está fora do escopo do curso mas me ajuda.

* nat_gateway_active - cria ou não os nat gateways na vpc.
* lb_active - cria ou não o load balancer do modulo ecs.
* spot_enabled - cria ou não asg e provider de instancias spot.

### TODO

* Opção para criar ou não os Parameter Store do modulo de VPC.
* Criar Role IAM para o modulo de ECS Cluster

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.6.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs_cluster"></a> [ecs\_cluster](#module\_ecs\_cluster) | ./modules/ecs_cluster | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_on_demand_desired_size"></a> [cluster\_on\_demand\_desired\_size](#input\_cluster\_on\_demand\_desired\_size) | ASG Spot Desired size | `number` | n/a | yes |
| <a name="input_cluster_on_demand_max_size"></a> [cluster\_on\_demand\_max\_size](#input\_cluster\_on\_demand\_max\_size) | ASG Spot Max size | `number` | n/a | yes |
| <a name="input_cluster_on_demand_min_size"></a> [cluster\_on\_demand\_min\_size](#input\_cluster\_on\_demand\_min\_size) | ASG Spot Minimal size | `number` | n/a | yes |
| <a name="input_cluster_spot_desired_size"></a> [cluster\_spot\_desired\_size](#input\_cluster\_spot\_desired\_size) | ASG Spot Desired size | `number` | n/a | yes |
| <a name="input_cluster_spot_max_size"></a> [cluster\_spot\_max\_size](#input\_cluster\_spot\_max\_size) | ASG Spot Max size | `number` | n/a | yes |
| <a name="input_cluster_spot_min_size"></a> [cluster\_spot\_min\_size](#input\_cluster\_spot\_min\_size) | ASG Spot Minimal size | `number` | n/a | yes |
| <a name="input_lb_active"></a> [lb\_active](#input\_lb\_active) | Create or not Load balancer | `bool` | n/a | yes |
| <a name="input_load_balancer_internal"></a> [load\_balancer\_internal](#input\_load\_balancer\_internal) | Internal or external lb | `string` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Type of Load Balancer | `string` | n/a | yes |
| <a name="input_nat_gateway_active"></a> [nat\_gateway\_active](#input\_nat\_gateway\_active) | Create or not NAT Gateways | `bool` | n/a | yes |
| <a name="input_node_ami"></a> [node\_ami](#input\_node\_ami) | ECS Cluster AMI | `string` | n/a | yes |
| <a name="input_node_instance_type"></a> [node\_instance\_type](#input\_node\_instance\_type) | Ec2 Instance type | `string` | n/a | yes |
| <a name="input_node_volume_size"></a> [node\_volume\_size](#input\_node\_volume\_size) | Cluster EC2 node volume size | `any` | n/a | yes |
| <a name="input_node_volume_type"></a> [node\_volume\_type](#input\_node\_volume\_type) | Cluster EC2 node volume type | `any` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_spot_enabled"></a> [spot\_enabled](#input\_spot\_enabled) | Create or not ASG with spot instances | `bool` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_load_balancer_dns"></a> [load\_balancer\_dns](#output\_load\_balancer\_dns) | n/a |
<!-- END_TF_DOCS -->