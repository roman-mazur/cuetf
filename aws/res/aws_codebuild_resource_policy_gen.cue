package res

#aws_codebuild_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codebuild_resource_policy")
	id?:          string
	policy:       string
	resource_arn: string
}
