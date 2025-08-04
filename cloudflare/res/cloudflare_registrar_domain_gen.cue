package res

#cloudflare_registrar_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_registrar_domain")
	close({
		account_id!:  string
		auto_renew?:  bool
		domain_name!: string
		locked?:      bool
		privacy?:     bool
	})
}
