package res

#google_access_context_manager_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_access_policy")
	close({
		// Time the AccessPolicy was created in UTC.
		create_time?: string

		// Resource name of the AccessPolicy. Format: '{{policy_id}}'
		name?: string
		id?:   string

		// The parent of this AccessPolicy in the Cloud Resource
		// Hierarchy.
		// Format: 'organizations/{{organization_id}}'
		parent!: string

		// Folder or project on which this policy is applicable.
		// Format: 'folders/{{folder_id}}' or
		// 'projects/{{project_number}}'
		scopes?: [...string]

		// Human readable title. Does not affect behavior.
		title!:    string
		timeouts?: #timeouts

		// Time the AccessPolicy was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
