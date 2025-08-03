package res

#aws_dynamodb_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_resource_policy")
	close({
		confirm_remove_self_resource_access?: bool
		id?:                                  string
		policy!:                              string
		region?:                              string
		resource_arn!:                        string
		revision_id?:                         string
	})
}
