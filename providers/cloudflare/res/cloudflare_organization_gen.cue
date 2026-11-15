package res

cloudflare_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_organization")
	close({
		create_time?: string
		id?:          string
		meta?: close({
			are_child_accounts_accessible_by_org_members?: bool

			// Ordered chain of organization tags from the root organization down to
			// (and including) this organization itself. Root organizations return a
			// single-element array containing their own tag; sub-organizations return
			// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
			// constructing authorization scopes that need to cover every ancestor
			// in the hierarchy.
			hierarchy_tags?: [...string]

			// Enable features for Organizations.
			tenant_flags?: close({
				account_creation?:                         string
				account_creation_applies_tenant_defaults?: string
				account_deletion?:                         string
				account_migration?:                        string
				account_mobility?:                         string
				enterprise_capability?:                    string
				member_management?:                        string
				sub_org_creation?:                         string
			})
			managed_by?:  string
			tenant_type?: string
		})

		// The Organization name, limited to 65 UTF-8 bytes.
		name!: string
		parent?: close({
			id!: string
		})

		// The current parent Organization ID. A different value is rejected; this
		// endpoint cannot move an Organization.
		parent_id?: string

		// Optional profile fields, each limited to 1,000 UTF-8 bytes. An empty profile is ignored.
		profile?: close({
			business_address?:  string
			business_email?:    string
			business_name?:     string
			business_phone?:    string
			external_metadata?: string
		})
	})
}
