package data

#google_cloud_identity_group_memberships: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloud_identity_group_memberships")
	close({
		// The name of the Group to get memberships from.
		group!: string
		id?:    string

		// List of Cloud Identity group memberships.
		memberships?: [...close({
			create_ignore_already_exists?: bool
			create_time?:                  string
			group?:                        string
			name?:                         string
			preferred_member_key?: [...close({
				id?:        string
				namespace?: string
			})]
			roles?: [...close({
				expiry_detail?: [...close({
					expire_time?: string
				})]
				name?: string
			})]
			type?:        string
			update_time?: string
		})]
	})
}
