package res

#cloudflare_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_account")
	enforce_twofactor?: bool
	id?:                string
	name:               string
	type?:              string
}
