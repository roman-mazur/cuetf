package data

#google_cloud_identity_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloud_identity_policies")
	close({
		// Filter expression for listing policies, as documented in the
		// Cloud Identity Policy API policies.list method
		filter?: string
		id?:     string

		// List of Cloud Identity policies that match the filter (or all
		// policies if no filter is provided).
		policies?: [...close({
			customer?: string
			name?:     string
			policy_query?: [...close({
				group?:      string
				org_unit?:   string
				query?:      string
				sort_order?: number
			})]
			setting?: string
			type?:    string
		})]
	})
}
