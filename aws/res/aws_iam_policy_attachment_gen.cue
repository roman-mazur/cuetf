package res

#aws_iam_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_policy_attachment")
	groups?: [...string]
	id?:        string
	name:       string
	policy_arn: string
	roles?: [...string]
	users?: [...string]
}
