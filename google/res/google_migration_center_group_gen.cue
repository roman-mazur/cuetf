package res

#google_migration_center_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_migration_center_group")
	close({
		// Output only. The timestamp when the group was created.
		create_time?: string

		// Optional. The description of the group.
		description?: string

		// Optional. User-friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Required. User specified ID for the group. It will become the
		// last component of the group name. The ID must be unique within
		// the project, must conform with RFC-1034, is restricted to
		// lower-cased letters, and has a maximum length of 63
		// characters. The ID must match the regular expression:
		// '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'.
		group_id!: string
		id?:       string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the group.
		location!: string

		// Output only. The name of the group.
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The timestamp when the group was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
