package data

#google_tags_tag_values: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_tags_tag_values")
	close({
		id?:     string
		parent!: string
		values?: [...close({
			create_time?:     string
			description?:     string
			name?:            string
			namespaced_name?: string
			parent?:          string
			short_name?:      string
			update_time?:     string
		})]
	})
}
