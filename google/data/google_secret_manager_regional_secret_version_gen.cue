package data

#google_secret_manager_regional_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_secret_manager_regional_secret_version")
	close({
		create_time?: string
		customer_managed_encryption?: [...close({
			kms_key_version_name?: string
		})]
		destroy_time?:          string
		enabled?:               bool
		id?:                    string
		is_secret_data_base64?: bool
		location?:              string
		name?:                  string
		project?:               string
		secret!:                string
		secret_data?:           string
		version?:               string
	})
}
