package data

#aws_s3files_mount_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3files_mount_target")
	close({
		// Availability Zone ID
		availability_zone_id?: string

		// File system ID
		file_system_id?: string

		// Mount target ID
		id!: string

		// IPv4 address
		ipv4_address?: string

		// IPv6 address
		ipv6_address?: string

		// Network interface ID
		network_interface_id?: string

		// AWS account ID of the owner
		owner_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Security group IDs
		security_groups?: [...string]

		// Mount target status
		status?: string

		// Status message
		status_message?: string

		// Subnet ID
		subnet_id?: string

		// VPC ID
		vpc_id?: string
	})
}
