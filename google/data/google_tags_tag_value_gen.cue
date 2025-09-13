package data

#google_tags_tag_value: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_tags_tag_value")
	close({
		create_time?:     string
		description?:     string
		id?:              string
		name?:            string
		namespaced_name?: string
		parent!:          string
		short_name!:      string
		update_time?:     string
	})
}
