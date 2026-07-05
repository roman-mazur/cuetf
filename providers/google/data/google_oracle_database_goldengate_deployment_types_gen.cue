package data

google_oracle_database_goldengate_deployment_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_goldengate_deployment_types")
	close({
		goldengate_deployment_types?: [...close({
			category?: string
			connection_types?: [...string]
			default_username?: string
			deployment_type?:  string
			display_name?:     string
			name?:             string
			ogg_version?:      string
			source_technologies?: [...string]
			supported_capabilities?: [...string]
			supported_technologies_url?: string
			target_technologies?: [...string]
		})]
		id?: string

		// The location of the resource.
		location!: string

		// The ID of the project in which the resource is located. If it is not
		// provided, the provider project is used.
		project?: string
	})
}
