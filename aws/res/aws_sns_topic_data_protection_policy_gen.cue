package res

#aws_sns_topic_data_protection_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sns_topic_data_protection_policy")
	arn!:    string
	id?:     string
	policy!: string
}
