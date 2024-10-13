package res

#cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_list")
	account_id!:  string
	description?: string
	id?:          string
	items?: [...string]
	items_with_description?: [...{
		description?: string
		value?:       string
	}]
	name!: string
	type!: string
}
