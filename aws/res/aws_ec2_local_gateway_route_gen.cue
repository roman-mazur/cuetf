package res

#aws_ec2_local_gateway_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_local_gateway_route")
	close({
		destination_cidr_block!:                   string
		id?:                                       string
		local_gateway_route_table_id!:             string
		local_gateway_virtual_interface_group_id!: string
		region?:                                   string
	})
}
