package data

#cloudflare_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_user")
	email?:    string
	id?:       string
	username?: string
}
