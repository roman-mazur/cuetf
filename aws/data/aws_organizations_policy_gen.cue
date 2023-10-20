package data

#aws_organizations_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_policy")
	arn?:         string
	aws_managed?: bool
	content?:     string
	description?: string
	id?:          string
	name?:        string
	policy_id:    string
	type?:        string
}
