package data

#google_parameter_manager_regional_parameter_version_render: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_parameter_manager_regional_parameter_version_render")
	close({
		disabled?:                bool
		id?:                      string
		location?:                string
		name?:                    string
		parameter!:               string
		parameter_data?:          string
		parameter_version_id!:    string
		project?:                 string
		rendered_parameter_data?: string
	})
}
