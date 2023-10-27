package data

#cloudflare_api_token_permission_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_api_token_permission_groups")
	account?: [string]: string
	id?: string
	r2?: [string]: string
	user?: [string]: string
	zone?: [string]: string
}
