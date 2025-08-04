package data

#cloudflare_account_permission_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_permission_group")
	close({
		account_id!: string
		id?:         string
		meta?: close({
			key?:   string
			value?: string
		})
		name?:                string
		permission_group_id!: string
	})
}
