package res

#aws_sesv2_dedicated_ip_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_dedicated_ip_assignment")
	close({
		destination_pool_name!: string
		id?:                    string
		ip!:                    string
		region?:                string
		timeouts?:              #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
