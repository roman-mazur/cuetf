package data

#aws_organizations_organizational_unit_descendant_organizational_units: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_organizational_unit_descendant_organizational_units")
	children?: [...{
		arn?:  string
		id?:   string
		name?: string
	}]
	id?:        string
	parent_id!: string
}
