package res

#aws_rds_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_integration")
	additional_encryption_context?: [string]: string
	arn?:              string
	id?:               string
	integration_name!: string
	kms_key_id?:       string
	source_arn!:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	target_arn!: string
	timeouts?:   #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
