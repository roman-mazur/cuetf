package res

import "list"

#google_secure_source_manager_hook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_secure_source_manager_hook")
	close({
		// Create timestamp.
		create_time?: string

		// Determines if the hook disabled or not.
		// Set to true to stop sending traffic.
		disabled?: bool

		// The events that trigger hook on. Possible values: ["PUSH",
		// "PULL_REQUEST"]
		events?: [...string]

		// The ID for the Hook.
		hook_id!: string
		id?:      string

		// The location for the Repository.
		location!: string

		// A unique identifier for a Hook. The name should be of the
		// format:
		// 'projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}'
		name?:    string
		project?: string

		// The ID for the Repository.
		repository_id!: string
		push_option?: matchN(1, [#push_option, list.MaxItems(1) & [...#push_option]])
		timeouts?: #timeouts

		// The sensitive query string to be appended to the target URI.
		sensitive_query_string?: string

		// The target URI to which the payloads will be delivered.
		target_uri!: string

		// Unique identifier of the hook.
		uid?: string

		// Update timestamp.
		update_time?: string
	})

	#push_option: close({
		// Trigger hook for matching branches only.
		// Specified as glob pattern. If empty or *, events for all
		// branches are
		// reported. Examples: main, {main,release*}.
		// See https://pkg.go.dev/github.com/gobwas/glob documentation.
		branch_filter?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
