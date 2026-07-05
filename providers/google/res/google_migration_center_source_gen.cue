package res

google_migration_center_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_migration_center_source")
	close({
		timeouts?: #timeouts

		// The timestamp when the source was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Free-text description.
		description?: string

		// User-friendly display name.
		display_name?: string

		// The number of frames that were reported by the source and contained errors.
		error_frame_count?: number
		id?:                string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// If 'true', the source is managed by other service(s).
		managed?: bool

		// The full name of the source.
		name?: string

		// Number of frames that are still being processed.
		pending_frame_count?: number

		// The information confidence of the source.
		// The higher the value, the higher the confidence.
		priority?: number

		// User specified ID for the source. It will become the last component of the
		// source name. The ID must be unique within the project, must conform with
		// RFC-1034, is restricted to lower-cased letters, and has a maximum
		// length of 63 characters. The ID must match the
		// regular expression: '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'.
		source_id!: string
		project?:   string

		// The state of the source.
		// Possible values:
		// ACTIVE
		// DELETING
		// INVALID
		state?: string

		// Data source type.
		// Possible values:
		// SOURCE_TYPE_UNKNOWN
		// SOURCE_TYPE_UPLOAD
		// SOURCE_TYPE_GUEST_OS_SCAN
		// SOURCE_TYPE_INVENTORY_SCAN
		// SOURCE_TYPE_CUSTOM
		// SOURCE_TYPE_DISCOVERY_CLIENT
		type?: string

		// The timestamp when the source was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
