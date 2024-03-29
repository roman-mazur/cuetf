package res

#aws_ec2_transit_gateway_policy_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_policy_table_association")
	id?:                             string
	resource_id?:                    string
	resource_type?:                  string
	transit_gateway_attachment_id:   string
	transit_gateway_policy_table_id: string
}
