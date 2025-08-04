package res

#cloudflare_zero_trust_access_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_tag")
	close({
		account_id!: string
		id?:         string
		name!:       string
	})
}
