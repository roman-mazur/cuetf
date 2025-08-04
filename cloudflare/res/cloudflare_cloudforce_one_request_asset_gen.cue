package res

#cloudflare_cloudforce_one_request_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request_asset")
	close({
		account_id!:  string
		created?:     string
		description?: string
		file_type?:   string
		id?:          number
		name?:        string
		page!:        number
		per_page!:    number
		request_id!:  string
		source?:      string
	})
}
