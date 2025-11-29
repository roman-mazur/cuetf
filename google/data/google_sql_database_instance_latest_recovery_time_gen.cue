package data

#google_sql_database_instance_latest_recovery_time: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sql_database_instance_latest_recovery_time")
	close({
		id?: string

		// Timestamp, identifies the latest recovery time of the source
		// instance.
		latest_recovery_time?: string
		instance!:             string

		// Timestamp, identifies when the source instance was deleted. If
		// this instance is deleted, then you must set the timestamp.
		source_instance_deletion_time?: string
		project?:                       string
	})
}
