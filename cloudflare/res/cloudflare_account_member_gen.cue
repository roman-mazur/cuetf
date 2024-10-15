package res

#cloudflare_account_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_member")
	account_id!:    string
	email_address!: string
	id?:            string
	role_ids!: [...string]
	status?: string
}
