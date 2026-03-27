package res

#scaleway_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_policy")
	close({
		// Application id
		application_id?: string

		// The date and time of the creation of the policy
		created_at?: string
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])

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

		// The tags associated with the policy
		tags?: [...string]

		// The date and time of the last update of the policy
		updated_at?: string

		// User id
		user_id?: string
	})

	#rule: close({
		// Conditions of the policy
		condition?: string

		// ID of organization scoped to the rule. Only one of project_ids
		// and organization_id may be set.
		organization_id?: string

		// Names of permission sets bound to the rule.
		permission_set_names!: [...string]

		// List of project IDs scoped to the rule. Only one of project_ids
		// and organization_id may be set.
		project_ids?: [...string]
	})
}
