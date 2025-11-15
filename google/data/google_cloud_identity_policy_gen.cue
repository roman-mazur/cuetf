package data

#google_cloud_identity_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_identity_policy")
	close({
		// The customer that the policy belongs to.
		customer?: string

		// The resource name of the policy to retrieve.
		name!: string

		// The CEL query that defines which entities the policy applies
		// to.
		policy_query?: [...close({
			group?:      string
			org_unit?:   string
			query?:      string
			sort_order?: number
		})]
		id?: string

		// The setting configured by this policy.
		setting?: string

		// The type of the policy.
		type?: string
	})
}
