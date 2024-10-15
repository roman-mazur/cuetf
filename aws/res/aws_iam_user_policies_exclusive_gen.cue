package res

#aws_iam_user_policies_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_user_policies_exclusive")
	policy_names!: [...string]
	user_name!: string
}
