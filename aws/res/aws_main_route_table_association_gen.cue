package res

#aws_main_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_main_route_table_association")
	id?:                      string
	original_route_table_id?: string
	route_table_id:           string
	vpc_id:                   string
	timeouts?:                #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
