package res

#aws_organizations_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_policy_attachment")
	id?:           string
	policy_id!:    string
	skip_destroy?: bool
	target_id!:    string
}
