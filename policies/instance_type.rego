package terraform.instance_type

import future.keywords.in

deny[msg] {
    some resource in input.resource_changes
    resource.type == "aws_instance"

    instance_type := resource.change.after.instance_type
    instance_type != "t2.micro"

    msg := sprintf("Instance %v has forbidden type %v. Only t2.micro is allowed.", [resource.address, instance_type])
}
