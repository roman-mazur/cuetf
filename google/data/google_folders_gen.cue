package data

#google_folders: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_folders")
	close({
		folders?: [...close({
			create_time?:  string
			delete_time?:  string
			display_name?: string
			etag?:         string
			name?:         string
			parent?:       string
			state?:        string
			update_time?:  string
		})]
		id?:        string
		parent_id!: string
	})
}
