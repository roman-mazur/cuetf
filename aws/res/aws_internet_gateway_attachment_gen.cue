package res

#aws_internet_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_internet_gateway_attachment")
	id?:                  string
	internet_gateway_id!: string
	vpc_id!:              string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
