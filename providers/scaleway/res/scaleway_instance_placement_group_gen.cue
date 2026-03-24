package res

#scaleway_instance_placement_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_placement_group")
	close({
		timeouts?: #timeouts
		id?:       string

		// The name of the placement group
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// One of the two policy_mode may be selected: enforced or
		// optional.
		policy_mode?: string

		// Is true when the policy is respected.
		policy_respected?: bool

		// The operating mode is selected by a policy_type
		policy_type?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The tags associated with the placement group
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		default?: string
	})
}
