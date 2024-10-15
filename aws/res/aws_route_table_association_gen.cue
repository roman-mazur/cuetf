package res

#aws_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route_table_association")
	gateway_id?:     string
	id?:             string
	route_table_id!: string
	subnet_id?:      string
	timeouts?:       #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
