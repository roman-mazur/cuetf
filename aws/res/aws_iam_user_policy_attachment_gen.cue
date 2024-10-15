package res

#aws_iam_user_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_user_policy_attachment")
	id?:         string
	policy_arn!: string
	user!:       string
}
