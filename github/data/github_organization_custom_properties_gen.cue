package data

#github_organization_custom_properties: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_custom_properties")
	close({
		allowed_values?: [...string]
		default_value?: string
		description?:   string
		id?:            string
		property_name!: string
		required?:      bool
		value_type?:    string
	})
}
