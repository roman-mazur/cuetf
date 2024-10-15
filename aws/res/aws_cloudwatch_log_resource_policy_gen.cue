package res

#aws_cloudwatch_log_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_resource_policy")
	id?:              string
	policy_document!: string
	policy_name!:     string
}
