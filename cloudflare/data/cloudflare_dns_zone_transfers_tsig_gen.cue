package data

#cloudflare_dns_zone_transfers_tsig: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_tsig")
	close({
		account_id!: string
		algo?:       string
		id?:         string
		name?:       string
		secret?:     string
		tsig_id?:    string
	})
}
