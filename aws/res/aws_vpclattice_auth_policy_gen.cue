package res

#aws_vpclattice_auth_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_auth_policy")
	close({
		timeouts?:            #timeouts
		id?:                  string
		policy!:              string
		region?:              string
		resource_identifier!: string
		state?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
