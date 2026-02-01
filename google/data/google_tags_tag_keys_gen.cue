package data

#google_tags_tag_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_tags_tag_keys")
	close({
		id?: string
		keys?: [...close({
			allowed_values_regex?: string
			create_time?:          string
			description?:          string
			name?:                 string
			namespaced_name?:      string
			parent?:               string
			purpose?:              string
			purpose_data?: [string]: string
			short_name?:  string
			update_time?: string
		})]
		parent!: string
	})
}
