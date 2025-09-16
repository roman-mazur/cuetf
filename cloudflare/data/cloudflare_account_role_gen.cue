package data

#cloudflare_account_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_role")
	close({
		// Account identifier tag.
		account_id!: string

		// Description of role's permissions.
		description?: string

		// Role identifier tag.
		id?: string
		permissions?: close({
			analytics?: close({
				read?:  bool
				write?: bool
			})
			billing?: close({
				read?:  bool
				write?: bool
			})
			cache_purge?: close({
				read?:  bool
				write?: bool
			})
			dns?: close({
				read?:  bool
				write?: bool
			})
			dns_records?: close({
				read?:  bool
				write?: bool
			})
			lb?: close({
				read?:  bool
				write?: bool
			})
			logs?: close({
				read?:  bool
				write?: bool
			})
			organization?: close({
				read?:  bool
				write?: bool
			})
			ssl?: close({
				read?:  bool
				write?: bool
			})
			waf?: close({
				read?:  bool
				write?: bool
			})
			zone_settings?: close({
				read?:  bool
				write?: bool
			})
			zones?: close({
				read?:  bool
				write?: bool
			})
		})

		// Role name.
		name?: string

		// Role identifier tag.
		role_id!: string
	})
}
