package res

#aws_organizations_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_resource_policy")
	arn?:     string
	content!: string
	id?:      string
	tags?: [string]: string
	tags_all?: [string]: string
}
