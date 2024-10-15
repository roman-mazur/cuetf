package res

#cloudflare_logpush_ownership_challenge: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_logpush_ownership_challenge")
	account_id?:                   string
	destination_conf!:             string
	id?:                           string
	ownership_challenge_filename?: string
	zone_id?:                      string
}
