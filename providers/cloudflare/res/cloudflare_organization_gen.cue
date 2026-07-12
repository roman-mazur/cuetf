package res

cloudflare_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_organization")
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

			// Ordered chain of organization tags from the root organization down to
			// (and including) this organization itself. Root organizations return a
			// single-element array containing their own tag; sub-organizations return
			// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
			// constructing authorization scopes that need to cover every ancestor
			// in the hierarchy.
			hierarchy_tags?: [...string]
			managed_by?: string
		})
		name!: string
		parent?: close({
			id!:   string
			name?: string
		})
		profile?: close({
			business_address!:  string
			business_email!:    string
			business_name!:     string
			business_phone!:    string
			external_metadata!: string
		})
	})
}
