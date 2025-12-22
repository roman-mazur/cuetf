package res

#aws_cloudwatch_event_archive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_event_archive")
	close({
		arn?:         string
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		event_pattern?:      string
		event_source_arn!:   string
		id?:                 string
		kms_key_identifier?: string
		name!:               string
		retention_days?:     number
	})
}
