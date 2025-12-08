package data

#cloudflare_registrar_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_registrar_domain")
	close({
		// Identifier
		account_id!: string

		// Domain name.
		domain_name!: string
	})
}
