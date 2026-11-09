package res

aws_bedrockdataautomation_blueprint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockdataautomation_blueprint")
	close({
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		blueprint_stage?:    string
		creation_time?:      string
		last_modified_time?: string
		name!:               string
		schema!:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#encryption_configuration: close({
		kms_encryption_context?: [string]: string
		kms_key_id!: string
	})
}
