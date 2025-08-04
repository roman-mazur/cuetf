package res

#cloudflare_dns_zone_transfers_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_peer")
	close({
		account_id!:  string
		id?:          string
		ip?:          string
		ixfr_enable?: bool
		name!:        string
		port?:        number
		tsig_id?:     string
	})
}
