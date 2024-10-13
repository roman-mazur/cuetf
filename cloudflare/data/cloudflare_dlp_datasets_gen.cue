package data

#cloudflare_dlp_datasets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_dlp_datasets")
	account_id!: string
	datasets?: [...{
		description?: string
		id?:          string
		name?:        string
		secret?:      bool
		status?:      string
	}]
}
