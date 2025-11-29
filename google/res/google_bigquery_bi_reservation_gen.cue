package res

#google_bigquery_bi_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_bi_reservation")
	close({
		// LOCATION_DESCRIPTION
		location!: string
		id?:       string

		// The resource name of the singleton BI reservation. Reservation
		// names have the form
		// 'projects/{projectId}/locations/{locationId}/biReservation'.
		name?: string

		// Size of a reservation, in bytes.
		size?:    number
		project?: string

		// The last update timestamp of a reservation.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		update_time?: string
		preferred_tables?: matchN(1, [#preferred_tables, [...#preferred_tables]])
		timeouts?: #timeouts
	})

	#preferred_tables: close({
		// The ID of the dataset in the above project.
		dataset_id?: string

		// The assigned project ID of the project.
		project_id?: string

		// The ID of the table in the above dataset.
		table_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
