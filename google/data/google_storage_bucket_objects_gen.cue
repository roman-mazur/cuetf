package data

#google_storage_bucket_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_bucket_objects")
	close({
		bucket!: string
		bucket_objects?: [...close({
			content_type?:  string
			media_link?:    string
			name?:          string
			self_link?:     string
			storage_class?: string
		})]
		id?:         string
		match_glob?: string
		prefix?:     string
	})
}
