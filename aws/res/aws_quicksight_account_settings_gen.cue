package res

#aws_quicksight_account_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_account_settings")
	close({
		aws_account_id?:                 string
		default_namespace?:              string
		termination_protection_enabled?: bool
		timeouts?:                       #timeouts
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
