package data

#github_repository_custom_properties: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_custom_properties")
	close({
		id?: string
		property?: [...close({
			property_name?: string
			property_value?: [...string]
		})]
		repository!: string
	})
}
