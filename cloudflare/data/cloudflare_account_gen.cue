package data

#cloudflare_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account")
	close({
		account_id?: string
		filter?: close({
			direction?: string
			name?:      string
		})
		created_on?: string
		id?:         string
		settings?: close({
			abuse_contact_email?: string
			enforce_twofactor?:   bool
		})
		name?: string
	})
}
