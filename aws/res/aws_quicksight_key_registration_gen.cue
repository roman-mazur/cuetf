package res

#aws_quicksight_key_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_key_registration")
	close({
		key_registration?: matchN(1, [#key_registration, [...#key_registration]])
		aws_account_id?: string
		region?:         string
	})

	#key_registration: close({
		default_key?: bool
		key_arn!:     string
	})
}
