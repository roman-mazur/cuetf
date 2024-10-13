package res

#aws_sns_topic_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sns_topic_policy")
	arn!:    string
	id?:     string
	owner?:  string
	policy!: string
}
