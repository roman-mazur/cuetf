package data

#cloudflare_r2_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket")
	close({
		account_id!:    string
		bucket_name!:   string
		creation_date?: string
		jurisdiction?:  string
		location?:      string
		name?:          string
		storage_class?: string
	})
}
