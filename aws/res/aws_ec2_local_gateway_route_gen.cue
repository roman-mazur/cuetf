package res

#aws_ec2_local_gateway_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_local_gateway_route")
	close({
		destination_cidr_block!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                   string
		id?:                                       string
		local_gateway_route_table_id!:             string
		local_gateway_virtual_interface_group_id!: string
	})
}
