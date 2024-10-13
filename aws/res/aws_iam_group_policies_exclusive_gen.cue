package res

#aws_iam_group_policies_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_group_policies_exclusive")
	group_name!: string
	policy_names!: [...string]
}
