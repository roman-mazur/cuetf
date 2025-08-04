package data

#aws_organizations_organizational_unit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_organizational_unit")
	close({
		arn?:       string
		id?:        string
		name!:      string
		parent_id!: string
	})
}
