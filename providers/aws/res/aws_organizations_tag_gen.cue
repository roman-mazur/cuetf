package res

#aws_organizations_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_organizations_tag")
	close({
		id?:          string
		key!:         string
		resource_id!: string
		value!:       string
	})
}
