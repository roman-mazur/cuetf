package res

#aws_ec2_transit_gateway_policy_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_policy_table_association")
	close({
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		resource_id?:                     string
		resource_type?:                   string
		transit_gateway_attachment_id!:   string
		transit_gateway_policy_table_id!: string
	})
}
