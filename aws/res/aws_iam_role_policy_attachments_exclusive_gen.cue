package res

#aws_iam_role_policy_attachments_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_role_policy_attachments_exclusive")
	close({
		policy_arns!: [...string]
		role_name!: string
	})
}
