package res

#aws_iam_group_policies_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_group_policies_exclusive")
	close({
		group_name!: string
		policy_names!: [...string]
	})
}
