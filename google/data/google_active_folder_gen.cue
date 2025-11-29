package data

#google_active_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_active_folder")
	close({
		// Provides the REST method through which to find the folder. LIST
		// is recommended as it is strongly consistent.
		api_method?:   string
		display_name!: string
		id?:           string
		name?:         string
		parent!:       string
	})
}
