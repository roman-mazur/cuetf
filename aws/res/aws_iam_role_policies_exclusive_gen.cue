package res

#aws_iam_role_policies_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_role_policies_exclusive")
	policy_names!: [...string]
	role_name!: string
}
