package res

#aws_ec2_transit_gateway_prefix_list_reference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_prefix_list_reference")
	close({
		blackhole?:      bool
		id?:             string
		prefix_list_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		prefix_list_owner_id?:           string
		transit_gateway_attachment_id?:  string
		transit_gateway_route_table_id!: string
	})
}
