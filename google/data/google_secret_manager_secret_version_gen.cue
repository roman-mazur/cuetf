package data

#google_secret_manager_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_secret_manager_secret_version")
	close({
		create_time?:           string
		destroy_time?:          string
		enabled?:               bool
		fetch_secret_data?:     bool
		id?:                    string
		is_secret_data_base64?: bool
		name?:                  string
		project?:               string
		secret!:                string
		secret_data?:           string
		version?:               string
	})
}
