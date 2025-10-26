package res

#github_organization_custom_properties: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_custom_properties")
	close({
		// The allowed values of the custom property
		allowed_values?: [...string]

		// The default value of the custom property
		default_value?: string

		// The description of the custom property
		description?: string
		id?:          string

		// The name of the custom property
		property_name!: string

		// Whether the custom property is required
		required?: bool

		// The type of the custom property
		value_type?: string
	})
}
