package res

#github_repository_custom_property: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_custom_property")
	close({
		id?:            string
		property_name!: string
		property_type!: string
		property_value!: [...string]
		repository!: string
	})
}
