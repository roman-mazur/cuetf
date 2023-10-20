package data

#aws_organizations_resource_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_resource_tags")
	id?:         string
	resource_id: string
	tags?: [string]: string
}
