package res

import "list"

#google_biglake_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_biglake_database")
	close({
		// The parent catalog.
		catalog!: string

		// Output only. The creation time of the database. A timestamp in
		// RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional
		// digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Output only. The deletion time of the database. Only set after
		// the
		// database is deleted. A timestamp in RFC3339 UTC "Zulu" format,
		// with
		// nanosecond resolution and up to nine fractional digits.
		// Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		delete_time?: string

		// Output only. The time when this database is considered expired.
		// Only set
		// after the database is deleted. A timestamp in RFC3339 UTC
		// "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		// Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		expire_time?: string
		id?:          string

		// The name of the database.
		name!: string
		hive_options?: matchN(1, [#hive_options, list.MaxItems(1) & [_, ...] & [...#hive_options]])
		timeouts?: #timeouts

		// The database type.
		type!: string

		// Output only. The last modification time of the database. A
		// timestamp in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
		// nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#hive_options: close({
		// Cloud Storage folder URI where the database data is stored,
		// starting with "gs://".
		location_uri?: string

		// Stores user supplied Hive database parameters. An object
		// containing a
		// list of"key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		parameters?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
