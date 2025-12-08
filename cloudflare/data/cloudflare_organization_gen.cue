package data

#cloudflare_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_organization")
	close({
		create_time?: string
		id?:          string
		filter?: close({
			// Only return organizations with the specified IDs (ex.
			// id=foo&id=bar). Send multiple elements
			// by repeating the query value.
			id?: [...string]

			// The amount of items to return. Defaults to 10.
			page_size?: number
			containing?: close({
				// Filter the list of organizations to the ones that contain this
				// particular
				// account.
				account?: string

				// Filter the list of organizations to the ones that contain this
				// particular
				// organization.
				organization?: string

				// Filter the list of organizations to the ones that contain this
				// particular
				// user.
				//
				// IMPORTANT: Just because an organization "contains" a user is
				// not a
				// representation of any authorization or privilege to manage any
				// resources
				// therein. An organization "containing" a user simply means the
				// user is managed by
				// that organization.
				user?: string
			})

			// An opaque token returned from the last list response that when
			// provided will retrieve the next page.
			//
			// Parameters used to filter the retrieved list must remain in
			// subsequent
			// requests with a page token.
			page_token?: string
			name?: close({
				// (case-insensitive) Filter the list of organizations to where
				// the name contains a particular
				// string.
				contains?: string

				// (case-insensitive) Filter the list of organizations to where
				// the name ends with a particular
				// string.
				ends_with?: string

				// (case-insensitive) Filter the list of organizations to where
				// the name starts with a
				// particular string.
				starts_with?: string
			})
			parent?: close({
				// Filter the list of organizations to the ones that are a
				// sub-organization
				// of the specified organization.
				//
				// "null" is a valid value to provide for this parameter. It means
				// "where
				// an organization has no parent (i.e. it is a 'root'
				// organization)."
				id?: string
			})
		})
		name?: string
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
		organization_id?: string
		parent?: close({
			id?:   string
			name?: string
		})
		profile?: close({
			business_address?:  string
			business_email?:    string
			business_name?:     string
			business_phone?:    string
			external_metadata?: string
		})
	})
}
