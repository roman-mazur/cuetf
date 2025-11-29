package res

#google_compute_project_default_network_tier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_project_default_network_tier")
	close({
		timeouts?: #timeouts
		id?:       string

		// The default network tier to be configured for the project. This
		// field can take the following values: PREMIUM or STANDARD.
		network_tier!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
	})

	#timeouts: close({
		create?: string
	})
}
