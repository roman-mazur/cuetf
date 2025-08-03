package res

#aws_inspector2_enabler: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector2_enabler")
	close({
		account_ids!: [...string]
		id?:     string
		region?: string
		resource_types!: [...string]
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
