package data

#google_storage_buckets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_buckets")
	close({
		buckets?: [...close({
			labels?: [string]: string
			location?:      string
			name?:          string
			self_link?:     string
			storage_class?: string
		})]
		id?:      string
		prefix?:  string
		project?: string
	})
}
