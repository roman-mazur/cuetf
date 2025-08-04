package data

#cloudflare_registrar_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_registrar_domain")
	close({
		account_id!:  string
		domain_name!: string
	})
}
