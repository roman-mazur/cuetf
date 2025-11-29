package res

#google_firebaserules_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebaserules_release")
	close({
		// Output only. Time the release was created.
		create_time?: string

		// Disable the release to keep it from being served. The response
		// code of NOT_FOUND will be given for executables generated from
		// this Release.
		disabled?: bool

		// Format: `projects/{project_id}/releases/{release_id}`\Firestore
		// Rules Releases will **always** have the name 'cloud.firestore'
		name!: string
		id?:   string

		// The project for the resource
		project?: string

		// Name of the `Ruleset` referred to by this `Release`. The
		// `Ruleset` must exist for the `Release` to be created.
		ruleset_name!: string
		timeouts?:     #timeouts

		// Output only. Time the release was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
