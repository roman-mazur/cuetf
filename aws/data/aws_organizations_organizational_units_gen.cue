package data

#aws_organizations_organizational_units: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_organizations_organizational_units")
	close({
		children?: [...close({
			arn?:  string
			id?:   string
			name?: string
		})]
		id?:        string
		parent_id!: string
	})
}
