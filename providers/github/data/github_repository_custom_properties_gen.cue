package data

#github_repository_custom_properties: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository_custom_properties")
	close({
		id?: string

		// List of custom properties
		property?: [...close({
			property_name?: string
			property_value?: [...string]
		})]

		// Name of the repository which the custom properties should be
		// on.
		repository!: string
	})
}
