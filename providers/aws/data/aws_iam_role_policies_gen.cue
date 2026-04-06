package data

#aws_iam_role_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_iam_role_policies")
	close({
		policy_names?: [...string]
		role_name!: string
	})
}
