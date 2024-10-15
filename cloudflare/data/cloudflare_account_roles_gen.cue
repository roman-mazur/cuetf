package data

#cloudflare_account_roles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_roles")
	account_id!: string
	id?:         string
	roles?: [...{
		description?: string
		id?:          string
		name?:        string
	}]
}
