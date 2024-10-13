package data

#cloudflare_access_identity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_access_identity_provider")
	account_id?: string
	id?:         string
	name!:       string
	type?:       string
	zone_id?:    string
}
