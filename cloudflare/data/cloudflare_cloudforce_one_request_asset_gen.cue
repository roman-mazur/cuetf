package data

#cloudflare_cloudforce_one_request_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request_asset")
	close({
		account_id!:  string
		asset_id!:    string
		created?:     string
		description?: string
		file_type?:   string
		id?:          number
		name?:        string
		request_id!:  string
	})
}
