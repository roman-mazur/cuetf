package res

#cloudflare_teams_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_teams_list")
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
