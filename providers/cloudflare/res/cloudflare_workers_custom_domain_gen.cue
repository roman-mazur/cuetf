package res

#cloudflare_workers_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_workers_custom_domain")
	close({
		// Identifer of the account.
		account_id!: string

		// Hostname of the Worker Domain.
		hostname!: string

		// Identifer of the Worker Domain.
		id?: string

		// Worker service associated with the zone and hostname.
		service!: string

		// Identifier of the zone.
		zone_id!: string

		// Name of the zone.
		zone_name?: string
	})
}
