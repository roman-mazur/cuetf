package res

#aws_iam_role_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_role_policy")
	close({
		id?:          string
		name?:        string
		name_prefix?: string
		policy!:      string
		role!:        string
	})
}
