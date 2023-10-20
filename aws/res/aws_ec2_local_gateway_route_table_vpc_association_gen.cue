package res

#aws_ec2_local_gateway_route_table_vpc_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_local_gateway_route_table_vpc_association")
	id?:                          string
	local_gateway_id?:            string
	local_gateway_route_table_id: string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id: string
}
