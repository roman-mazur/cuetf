package res

#aws_vpc_route_server_propagation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_route_server_propagation")
	close({
		timeouts?:        #timeouts
		region?:          string
		route_server_id!: string
		route_table_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
