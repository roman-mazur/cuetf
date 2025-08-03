package res

#aws_redshift_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_integration")
	close({
		additional_encryption_context?: [string]: string
		timeouts?:         #timeouts
		arn?:              string
		description?:      string
		integration_name!: string
		kms_key_id?:       string
		region?:           string
		source_arn!:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
