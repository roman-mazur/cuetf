package res

#aws_vpc_endpoint_subnet_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_subnet_association")
	close({
		timeouts?:        #timeouts
		id?:              string
		region?:          string
		subnet_id!:       string
		vpc_endpoint_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
