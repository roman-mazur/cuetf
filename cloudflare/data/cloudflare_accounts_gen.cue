package data

#cloudflare_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_accounts")
	accounts?: [...{
		enforce_twofactor?: bool
		id?:                string
		name?:              string
		type?:              string
	}]
	id?:   string
	name?: string
}
