package data

#aws_organizations_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_policy")
	arn?:         string
	aws_managed?: bool
	content?:     string
	description?: string
	id?:          string
	name?:        string
	policy_id!:   string
	type?:        string
}
