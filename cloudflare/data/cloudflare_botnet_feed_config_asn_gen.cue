package data

#cloudflare_botnet_feed_config_asn: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_botnet_feed_config_asn")
	close({
		// Identifier.
		account_id!: string
		asn?:        number
	})
}
