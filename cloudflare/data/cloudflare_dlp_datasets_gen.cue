package data

#cloudflare_dlp_datasets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dlp_datasets")
	account_id!: string
	datasets?: [...{
		description?: string
		id?:          string
		name?:        string
		secret?:      bool
		status?:      string
	}]
}
