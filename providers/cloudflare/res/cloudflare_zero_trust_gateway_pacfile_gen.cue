package res

#cloudflare_zero_trust_gateway_pacfile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_gateway_pacfile")
	close({
		account_id?: string

		// Actual contents of the PAC file
		contents!:   string
		created_at?: string

		// Detailed description of the PAC file.
		description?: string
		id?:          string

		// Name of the PAC file.
		name!: string

		// URL-friendly version of the PAC file name. If not provided, it
		// will be auto-generated
		slug?:       string
		updated_at?: string

		// Unique URL to download the PAC file.
		url?: string
	})
}
