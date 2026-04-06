package data

#google_cloud_identity_group_transitive_memberships: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloud_identity_group_transitive_memberships")
	close({
		// The name of the Group to get memberships from.
		group!: string
		id?:    string

		// List of Cloud Identity group memberships.
		memberships?: [...close({
			member?: string
			preferred_member_key?: [...close({
				id?:        string
				namespace?: string
			})]
			relation_type?: string
			roles?: [...close({
				role?: string
			})]
		})]
	})
}
