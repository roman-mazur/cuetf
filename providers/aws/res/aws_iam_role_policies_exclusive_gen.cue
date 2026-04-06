package res

#aws_iam_role_policies_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_role_policies_exclusive")
	close({
		policy_names!: [...string]
		role_name!: string
	})
}
