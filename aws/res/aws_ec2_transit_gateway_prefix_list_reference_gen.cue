package res

#aws_ec2_transit_gateway_prefix_list_reference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_prefix_list_reference")
	blackhole?:                     bool
	id?:                            string
	prefix_list_id:                 string
	prefix_list_owner_id?:          string
	transit_gateway_attachment_id?: string
	transit_gateway_route_table_id: string
}