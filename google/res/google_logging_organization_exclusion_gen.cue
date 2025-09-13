package res

#google_logging_organization_exclusion: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_logging_organization_exclusion")
	close({
		// A human-readable description.
		description?: string

		// Whether this exclusion rule should be disabled or not. This
		// defaults to false.
		disabled?: bool

		// The filter to apply when excluding logs. Only log entries that
		// match the filter are excluded.
		filter!: string
		id?:     string

		// The name of the logging exclusion.
		name!:   string
		org_id!: string
	})
}
