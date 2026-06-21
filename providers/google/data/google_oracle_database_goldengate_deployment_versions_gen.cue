package data

#google_oracle_database_goldengate_deployment_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_goldengate_deployment_versions")
	close({
		goldengate_deployment_versions?: [...close({
			name?: string
			ocid?: string
			properties?: [...close({
				deployment_type?:  string
				ogg_version?:      string
				release_time?:     string
				release_type?:     string
				security_fix?:     bool
				support_end_time?: string
			})]
		})]
		id?: string

		// The location of the resource.
		location!: string

		// The ID of the project in which the resource is located. If it
		// is not provided, the provider project is used.
		project?: string
	})
}
