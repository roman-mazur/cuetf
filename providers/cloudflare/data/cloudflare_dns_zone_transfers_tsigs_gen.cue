package data

#cloudflare_dns_zone_transfers_tsigs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_dns_zone_transfers_tsigs")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// TSIG algorithm.
			algo?: string
			id?:   string

			// TSIG key name.
			name?: string

			// TSIG secret.
			secret?: string
		}), [...close({
			// TSIG algorithm.
			algo?: string
			id?:   string

			// TSIG key name.
			name?: string

			// TSIG secret.
			secret?: string
		})]])
	})
}
