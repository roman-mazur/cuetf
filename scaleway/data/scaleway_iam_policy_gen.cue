package data

#scaleway_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_iam_policy")
	close({
		// Application id
		application_id?: string

		// The date and time of the creation of the policy
		created_at?: string

		// The description of the iam policy
		description?: string

		// Whether or not the policy is editable.
		editable?: bool

		// Group id
		group_id?: string
		id?:       string

		// The name of the iam policy
		name?: string

		// Deactivate policy to a principal
		no_principal?: bool

		// ID of organization the resource is associated to.
		organization_id?: string

		// The ID of the policy
		policy_id?: string

		// Rules of the policy to create
		rule?: [...close({
			condition?:       string
			organization_id?: string
			permission_set_names?: [...string]
			project_ids?: [...string]
		})]

		// The tags associated with the policy
		tags?: [...string]

		// The date and time of the last update of the policy
		updated_at?: string

		// User id
		user_id?: string
	})
}
