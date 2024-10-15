package data

#cloudflare_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list")
	account_id!:  string
	description?: string
	id?:          string
	kind?:        string
	name!:        string
	numitems?:    number
}
