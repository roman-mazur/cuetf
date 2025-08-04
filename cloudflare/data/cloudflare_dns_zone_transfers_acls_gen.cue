package data

#cloudflare_dns_zone_transfers_acls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_acls")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			id?:       string
			ip_range?: string
			name?:     string
		}), [...close({
			id?:       string
			ip_range?: string
			name?:     string
		})]])
	})
}
