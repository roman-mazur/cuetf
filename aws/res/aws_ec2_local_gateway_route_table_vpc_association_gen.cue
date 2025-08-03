package res

#aws_ec2_local_gateway_route_table_vpc_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_local_gateway_route_table_vpc_association")
	close({
		id?:                           string
		local_gateway_id?:             string
		local_gateway_route_table_id!: string
		region?:                       string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id!: string
	})
}
