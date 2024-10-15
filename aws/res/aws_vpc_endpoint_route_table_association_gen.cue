package res

#aws_vpc_endpoint_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_route_table_association")
	id?:              string
	route_table_id!:  string
	vpc_endpoint_id!: string
}
