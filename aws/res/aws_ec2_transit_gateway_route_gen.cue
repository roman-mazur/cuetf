package res

#aws_ec2_transit_gateway_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_route")
	blackhole?:                     bool
	destination_cidr_block:         string
	id?:                            string
	transit_gateway_attachment_id?: string
	transit_gateway_route_table_id: string
}
