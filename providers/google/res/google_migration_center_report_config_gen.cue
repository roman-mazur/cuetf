package res

#google_migration_center_report_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_report_config")
	close({
		group_preferenceset_assignments!: matchN(1, [#group_preferenceset_assignments, [_, ...] & [...#group_preferenceset_assignments]])
		timeouts?: #timeouts

		// The timestamp when the resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Free-text description.
		description?: string

		// User-friendly display name. Maximum length is 63 characters.
		display_name?: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Name of resource.
		name?:    string
		project?: string

		// User specified ID for the report config. It will become the
		// last component
		// of the report config name. The ID must be unique within the
		// project, must
		// conform with RFC-1034, is restricted to lower-cased letters,
		// and has a
		// maximum length of 63 characters. The ID must match the regular
		// expression:
		// [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
		report_config_id!: string

		// The timestamp when the resource was last updated.
		update_time?: string
	})

	#group_preferenceset_assignments: close({
		// Name of the group.
		group!: string

		// Name of the Preference Set.
		preference_set!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
