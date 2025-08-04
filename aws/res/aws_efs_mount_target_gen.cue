package res

#aws_efs_mount_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_mount_target")
	close({
		availability_zone_id?:   string
		availability_zone_name?: string
		dns_name?:               string
		file_system_arn?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		file_system_id!:        string
		id?:                    string
		timeouts?:              #timeouts
		ip_address?:            string
		mount_target_dns_name?: string
		network_interface_id?:  string
		owner_id?:              string
		security_groups?: [...string]
		subnet_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
