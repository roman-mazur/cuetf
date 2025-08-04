package res

#cloudflare_logpush_ownership_challenge: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpush_ownership_challenge")
	close({
		account_id?:       string
		destination_conf!: string
		filename?:         string
		message?:          string
		valid?:            bool
		zone_id?:          string
	})
}
