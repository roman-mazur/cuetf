package res

#google_bigquery_reservation_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_reservation_group")
	close({
		timeouts?: #timeouts
		id?:       string

		// The geographic location where the transfer config should
		// reside.
		// Examples: US, EU, asia-northeast1. The default value is US.
		location?: string

		// The name of the reservation group. This field must only contain
		// alphanumeric characters or dash.
		name!:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
