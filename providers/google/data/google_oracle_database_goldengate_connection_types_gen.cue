package data

google_oracle_database_goldengate_connection_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_goldengate_connection_types")
	close({
		goldengate_connection_types?: [...close({
			connection_type?: string
			name?:            string
			technology_types?: [...string]
		})]
		id?: string

		// The location of the resource.
		location!: string

		// The ID of the project in which the resource is located. If it is not
		// provided, the provider project is used.
		project?: string
	})
}
