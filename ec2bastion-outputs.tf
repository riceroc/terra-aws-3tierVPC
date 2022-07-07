# Outputs for Public EC2 Bastion
output "ec2_bastion_public_instance_ids" {
    description = "List of IDs of public Bastion instances"
    value = module.ec2_public.id
}

output "ec2_bastion_eip" {
    description = "Elastic IP assocaited with the Bastion instances"
    value = aws_eip.bastion_eip.public_ip
}
