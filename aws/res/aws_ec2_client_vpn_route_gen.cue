package res

#aws_ec2_client_vpn_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_client_vpn_route")
	close({
		client_vpn_endpoint_id!: string
		description?:            string
		destination_cidr_block!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		id?:                   string
		origin?:               string
		target_vpc_subnet_id!: string
		type?:                 string
		timeouts?:             #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
