package data

#aws_organizations_organizational_unit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_organizational_unit")
	arn?:       string
	id?:        string
	name!:      string
	parent_id!: string
}
