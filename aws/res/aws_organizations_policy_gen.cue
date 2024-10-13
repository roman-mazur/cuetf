package res

#aws_organizations_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_policy")
	arn?:          string
	content!:      string
	description?:  string
	id?:           string
	name!:         string
	skip_destroy?: bool
	tags?: [string]: string
	tags_all?: [string]: string
	type?: string
}
