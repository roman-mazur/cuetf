package data

#aws_organizations_organizational_units: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_organizational_units")
	children?: [...{
		arn?:  string
		id?:   string
		name?: string
	}]
	id?:        string
	parent_id!: string
}
