package data

#cloudflare_zero_trust_access_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_tag")
	close({
		account_id!: string
		app_count?:  number
		created_at?: string
		id?:         string
		name?:       string
		tag_name?:   string
		updated_at?: string
	})
}
