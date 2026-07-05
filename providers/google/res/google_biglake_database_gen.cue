package res

import "list"

google_biglake_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_database")
	close({
		hive_options!: matchN(1, [#hive_options, list.MaxItems(1) & [_, ...] & [...#hive_options]])
		timeouts?: #timeouts

		// The parent catalog.
		catalog!: string

		// Output only. The creation time of the database. A timestamp in RFC3339
		// UTC "Zulu" format, with nanosecond resolution and up to nine fractional
		// digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Output only. The deletion time of the database. Only set after the
		// database is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
		// nanosecond resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Output only. The time when this database is considered expired. Only set
		// after the database is deleted. A timestamp in RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		expire_time?: string
		id?:          string

		// The name of the database.
		name!: string

		// The database type.
		type!: string

		// Output only. The last modification time of the database. A timestamp in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#hive_options: close({
		// Cloud Storage folder URI where the database data is stored, starting with "gs://".
		location_uri?: string

		// Stores user supplied Hive database parameters. An object containing a
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
