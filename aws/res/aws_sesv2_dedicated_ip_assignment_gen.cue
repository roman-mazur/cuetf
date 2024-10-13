package res

#aws_sesv2_dedicated_ip_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sesv2_dedicated_ip_assignment")
	destination_pool_name!: string
	id?:                    string
	ip!:                    string
	timeouts?:              #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
