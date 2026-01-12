package res

#google_apphub_boundary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apphub_boundary")
	close({
		// Create time.
		create_time?: string

		// Optional. The resource name of the CRM node being attached to
		// the
		// boundary.
		// Format: 'projects/{project-number}'
		crm_node?: string

		// The location for the Boundary resource. Must be global.
		location!: string

		// Identifier. The resource name of the boundary.
		// Format: "projects/{project}/locations/{{location}}/boundary"
		name?: string
		id?:   string

		// Boundary type.
		type?:     string
		project?:  string
		timeouts?: #timeouts

		// Update time.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
