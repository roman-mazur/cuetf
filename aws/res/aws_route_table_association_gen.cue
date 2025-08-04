package res

#aws_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route_table_association")
	close({
		timeouts?:       #timeouts
		gateway_id?:     string
		id?:             string
		region?:         string
		route_table_id!: string
		subnet_id?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
