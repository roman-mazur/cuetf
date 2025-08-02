package data

#aws_organizations_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_policies")
	close({
		filter!: string
		id?:     string
		ids?: [...string]
	})
}
