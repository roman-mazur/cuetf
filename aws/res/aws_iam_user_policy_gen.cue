package res

#aws_iam_user_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_user_policy")
	id?:          string
	name?:        string
	name_prefix?: string
	policy!:      string
	user!:        string
}
