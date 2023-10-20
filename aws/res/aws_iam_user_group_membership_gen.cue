package res

#aws_iam_user_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_user_group_membership")
	groups: [...string]
	id?:  string
	user: string
}
