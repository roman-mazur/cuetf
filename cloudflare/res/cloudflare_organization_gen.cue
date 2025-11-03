package res

#cloudflare_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_organization")
	close({
		create_time?: string
		id?:          string
		meta?: close({
			// Enable features for Organizations.
			flags?: close({
				account_creation?:  string
				account_deletion?:  string
				account_migration?: string
				account_mobility?:  string
				sub_org_creation?:  string
			})
			managed_by?: string
		})
		parent?: close({
			id!:   string
			name?: string
		})
		name!: string
		profile?: close({
			business_address!:  string
			business_email!:    string
			business_name!:     string
			business_phone!:    string
			external_metadata!: string
		})
	})
}
