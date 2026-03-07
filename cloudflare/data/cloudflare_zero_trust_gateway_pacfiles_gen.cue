package data

#cloudflare_zero_trust_gateway_pacfiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_gateway_pacfiles")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Detailed description of the PAC file.
			description?: string
			id?:          string

			// Name of the PAC file.
			name?: string

			// URL-friendly version of the PAC file name.
			slug?:       string
			updated_at?: string

			// Unique URL to download the PAC file.
			url?: string
		}), [...close({
			created_at?: string

			// Detailed description of the PAC file.
			description?: string
			id?:          string

			// Name of the PAC file.
			name?: string

			// URL-friendly version of the PAC file name.
			slug?:       string
			updated_at?: string

			// Unique URL to download the PAC file.
			url?: string
		})]])
	})
}
