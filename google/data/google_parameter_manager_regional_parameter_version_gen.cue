package data

#google_parameter_manager_regional_parameter_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_parameter_manager_regional_parameter_version")
	close({
		create_time?:          string
		disabled?:             bool
		id?:                   string
		kms_key_version?:      string
		location?:             string
		name?:                 string
		parameter!:            string
		parameter_data?:       string
		parameter_version_id!: string
		project?:              string
		update_time?:          string
	})
}
