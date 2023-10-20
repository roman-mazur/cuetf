package res

#aws_iam_group_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_group_policy_attachment")
	group:      string
	id?:        string
	policy_arn: string
}
