package res

#aws_vpc_endpoint_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_policy")
	close({
		id?:              string
		policy?:          string
		region?:          string
		vpc_endpoint_id!: string
		timeouts?:        #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
