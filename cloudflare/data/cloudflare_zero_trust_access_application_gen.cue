package data

#cloudflare_zero_trust_access_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_application")
	account_id?: string
	aud?:        string
	domain?:     string
	id?:         string
	name?:       string
	zone_id?:    string
}
