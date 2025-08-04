package res

#aws_internet_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_internet_gateway_attachment")
	close({
		timeouts?:            #timeouts
		id?:                  string
		internet_gateway_id!: string
		region?:              string
		vpc_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
