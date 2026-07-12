package res

github_repository_custom_property: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_custom_property")
	close({
		id?: string

		// Name of the custom property.
		property_name!: string

		// Type of the custom property. Valid values are `string`, `single_select`,
		// `multi_select`, `true_false`, and `url`.
		property_type!: string

		// Value of the custom property. For `string`, `single_select`, `true_false`,
		// and `url` property types, this should be a single value. For `multi_select`
		// property types, this can be multiple values.
		property_value!: [...string]

		// Name of the repository.
		repository!: string

		// ID of the repository.
		repository_id?: number
	})
}
