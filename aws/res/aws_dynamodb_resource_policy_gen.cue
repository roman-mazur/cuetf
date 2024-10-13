package res

#aws_dynamodb_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_resource_policy")
	confirm_remove_self_resource_access?: bool
	id?:                                  string
	policy!:                              string
	resource_arn!:                        string
	revision_id?:                         string
}
