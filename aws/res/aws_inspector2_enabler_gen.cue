package res

#aws_inspector2_enabler: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector2_enabler")
	account_ids!: [...string]
	id?: string
	resource_types!: [...string]
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
