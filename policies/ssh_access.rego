package terraform.ssh_access

import future.keywords.in

deny[msg] {
    some resource in input.resource_changes
    resource.type == "aws_security_group"

    some ingress in resource.change.after.ingress
    ingress.from_port == 22
    ingress.to_port == 22

    some block in ingress.cidr_blocks
    block == "0.0.0.0/0"

    msg := sprintf("Security group %v allows public SSH access (0.0.0.0/0)", [resource.address])
}
