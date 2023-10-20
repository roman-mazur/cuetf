package res

#aws_vpc_endpoint_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_policy")
	id?:             string
	policy?:         string
	vpc_endpoint_id: string
	timeouts?:       #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
