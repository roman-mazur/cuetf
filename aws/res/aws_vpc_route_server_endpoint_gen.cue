package res

#aws_vpc_route_server_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_route_server_endpoint")
	close({
		arn?:                      string
		eni_address?:              string
		eni_id?:                   string
		region?:                   string
		route_server_endpoint_id?: string
		route_server_id!:          string
		subnet_id!:                string
		timeouts?:                 #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
