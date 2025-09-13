package data

#google_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_folder")
	close({
		configured_capabilities?: [...string]
		create_time?:         string
		deletion_protection?: bool
		display_name?:        string
		folder!:              string
		folder_id?:           string
		id?:                  string
		lifecycle_state?:     string
		lookup_organization?: bool
		management_project?:  string
		name?:                string
		organization?:        string
		parent?:              string
	})
}
