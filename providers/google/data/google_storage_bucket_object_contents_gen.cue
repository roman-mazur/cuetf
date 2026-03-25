package data

#google_storage_bucket_object_contents: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_bucket_object_contents")
	close({
		bucket!: string
		bucket_objects?: [...close({
			content?:              string
			content_base64?:       string
			content_base64sha512?: string
			content_hexsha512?:    string
			content_type?:         string
			media_link?:           string
			name?:                 string
			self_link?:            string
		})]
		id?:         string
		match_glob?: string
		prefix?:     string
	})
}
