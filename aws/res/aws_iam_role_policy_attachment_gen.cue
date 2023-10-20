package res

#aws_iam_role_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_role_policy_attachment")
	id?:        string
	policy_arn: string
	role:       string
}
