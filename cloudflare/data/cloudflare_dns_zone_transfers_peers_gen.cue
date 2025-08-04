package data

#cloudflare_dns_zone_transfers_peers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_peers")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			id?:          string
			ip?:          string
			ixfr_enable?: bool
			name?:        string
			port?:        number
			tsig_id?:     string
		}), [...close({
			id?:          string
			ip?:          string
			ixfr_enable?: bool
			name?:        string
			port?:        number
			tsig_id?:     string
		})]])
	})
}
