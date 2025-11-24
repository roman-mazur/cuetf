package data

#google_cloud_identity_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloud_identity_groups")
	close({
		// List of Cloud Identity groups.
		groups?: [...close({
			additional_group_keys?: [...close({
				id?:        string
				namespace?: string
			})]
			create_time?:  string
			description?:  string
			display_name?: string
			group_key?: [...close({
				id?:        string
				namespace?: string
			})]
			initial_group_config?: string
			labels?: [string]: string
			name?:        string
			parent?:      string
			update_time?: string
		})]
		id?: string

		// The resource name of the entity under which this Group resides
		// in the
		// Cloud Identity resource hierarchy.
		//
		// Must be of the form identitysources/{identity_source_id} for
		// external-identity-mapped
		// groups or customers/{customer_id} for Google Groups.
		parent!: string
	})
}
