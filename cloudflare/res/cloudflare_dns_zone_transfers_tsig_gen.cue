package res

#cloudflare_dns_zone_transfers_tsig: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_dns_zone_transfers_tsig")
	close({
		account_id!: string

		// TSIG algorithm.
		algo!: string

		// TSIG key name.
		name!: string
		id?:   string

		// TSIG secret.
		secret!: string
	})
}
