package data

#google_sql_backup_run: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_sql_backup_run")
	close({
		// The identifier for this backup run. Unique only for a specific
		// Cloud SQL instance. If left empty and multiple backups exist
		// for the instance, most_recent must be set to true.
		backup_id?: number

		// Name of the database instance.
		instance!: string
		id?:       string

		// Location of the backups.
		location?: string

		// Toggles use of the most recent backup run if multiple backups
		// exist for a Cloud SQL instance.
		most_recent?: bool

		// Project ID of the project that contains the instance.
		project?: string

		// The time the backup operation actually started in UTC timezone
		// in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
		start_time?: string

		// The status of this run.
		status?: string
	})
}
