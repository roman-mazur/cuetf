package res

#cloudflare_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account")
	close({
		created_on?: string
		settings?: close({
			abuse_contact_email?: string
			enforce_twofactor?:   bool
		})
		id?: string
		unit?: close({
			id?: string
		})
		name!: string
		type!: string
	})
}
