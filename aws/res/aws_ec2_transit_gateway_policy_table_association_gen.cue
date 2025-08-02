package res

#aws_ec2_transit_gateway_policy_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_policy_table_association")
	close({
		id?:                              string
		region?:                          string
		resource_id?:                     string
		resource_type?:                   string
		transit_gateway_attachment_id!:   string
		transit_gateway_policy_table_id!: string
	})
}
