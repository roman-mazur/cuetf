package res

import "list"

#google_biglake_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_table")
	close({
		// Output only. The creation time of the table. A timestamp in
		// RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional
		// digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// The id of the parent database.
		database?: string

		// Output only. The deletion time of the table. Only set after the
		// table is deleted. A timestamp in RFC3339 UTC "Zulu" format,
		// with
		// nanosecond resolution and up to nine fractional digits.
		// Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		delete_time?: string

		// The checksum of a table object computed by the server based on
		// the value
		// of other fields. It may be sent on update requests to ensure
		// the client
		// has an up-to-date value before proceeding. It is only checked
		// for update
		// table operations.
		etag?: string

		// Output only. The time when this table is considered expired.
		// Only set
		// after the table is deleted. A timestamp in RFC3339 UTC "Zulu"
		// format,
		// with nanosecond resolution and up to nine fractional digits.
		// Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		expire_time?: string
		id?:          string

		// Output only. The name of the Table. Format:
		// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
		name!: string
		hive_options?: matchN(1, [#hive_options, list.MaxItems(1) & [...#hive_options]])
		timeouts?: #timeouts

		// The database type. Possible values: ["HIVE"]
		type?: string

		// Output only. The last modification time of the table. A
		// timestamp in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
		// nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#hive_options: close({
		storage_descriptor?: matchN(1, [_#defs."/$defs/hive_options/$defs/storage_descriptor", list.MaxItems(1) & [..._#defs."/$defs/hive_options/$defs/storage_descriptor"]])

		// Stores user supplied Hive table parameters. An object
		// containing a
		// list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		parameters?: [string]: string

		// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
		table_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/hive_options/$defs/storage_descriptor": close({
		// The fully qualified Java class name of the input format.
		input_format?: string

		// Cloud Storage folder URI where the table data is stored,
		// starting with "gs://".
		location_uri?: string

		// The fully qualified Java class name of the output format.
		output_format?: string
	})
}
