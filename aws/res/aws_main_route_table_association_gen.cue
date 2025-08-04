package res

#aws_main_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_main_route_table_association")
	close({
		timeouts?:                #timeouts
		id?:                      string
		original_route_table_id?: string
		region?:                  string
		route_table_id!:          string
		vpc_id!:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
