package res

#github_repository_custom_property: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_custom_property")
	close({
		id?: string

		// Name of the custom property.
		property_name!: string

		// Type of the custom property
		property_type!: string

		// Value of the custom property.
		property_value!: [...string]

		// Name of the repository which the custom properties should be
		// on.
		repository!: string
	})
}
