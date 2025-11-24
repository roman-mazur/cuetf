package data

#google_storage_object_signed_url: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_object_signed_url")
	close({
		bucket!:       string
		content_md5?:  string
		content_type?: string
		credentials?:  string
		duration?:     string
		extension_headers?: [string]: string
		http_method?: string
		id?:          string
		path!:        string
		signed_url?:  string
	})
}
