package res

#aws_sns_topic_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sns_topic_policy")
	arn!:    string
	id?:     string
	owner?:  string
	policy!: string
}
