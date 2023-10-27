package data

#cloudflare_lists: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_lists")
	account_id: string
	id?:        string
	lists?: [...{
		description?: string
		id?:          string
		kind?:        string
		name?:        string
		numitems?:    number
	}]
}
