package res

#aws_iam_user_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_user_policy")
	id?:          string
	name?:        string
	name_prefix?: string
	policy!:      string
	user!:        string
}
