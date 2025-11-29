package data

#google_sql_tiers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sql_tiers")
	close({
		id?: string

		// Project ID of the project for which to list tiers.
		project?: string
		tiers?: [...close({
			disk_quota?: number
			ram?:        number
			region?: [...string]
			tier?: string
		})]
	})
}
