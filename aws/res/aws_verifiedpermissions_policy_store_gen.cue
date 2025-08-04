package res

#aws_verifiedpermissions_policy_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedpermissions_policy_store")
	close({
		validation_settings?: matchN(1, [#validation_settings, [...#validation_settings]])
		arn?:                 string
		deletion_protection?: string
		description?:         string
		id?:                  string
		policy_store_id?:     string
		region?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#validation_settings: close({
		mode!: string
	})
}
