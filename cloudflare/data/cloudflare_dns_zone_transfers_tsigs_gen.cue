package data

#cloudflare_dns_zone_transfers_tsigs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_tsigs")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			algo?:   string
			id?:     string
			name?:   string
			secret?: string
		}), [...close({
			algo?:   string
			id?:     string
			name?:   string
			secret?: string
		})]])
	})
}
