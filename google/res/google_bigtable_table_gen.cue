package res

import "list"

#google_bigtable_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigtable_table")
	close({
		// Duration to retain change stream data for the table. Set to 0
		// to disable. Must be between 1 and 7 days.
		change_stream_retention?: string

		// A field to make the table protected against data loss i.e. when
		// set to PROTECTED, deleting the table, the column families in
		// the table, and the instance containing the table would be
		// prohibited. If not provided, currently deletion protection
		// will be set to UNPROTECTED as it is the API default value.
		deletion_protection?: string

		// The name of the Bigtable instance.
		instance_name!: string
		id?:            string

		// The name of the table. Must be 1-50 characters and must only
		// contain hyphens, underscores, periods, letters and numbers.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// Defines the row key schema of a table. To create or update a
		// table with a row key schema, specify this argument.
		// Note that in-place update is not supported, and any in-place
		// modification to the schema will lead to failure.
		// To update a schema, please clear it (by omitting the field),
		// and update the resource again with a new schema.\n
		//
		// The schema must be a valid JSON encoded string representing a
		// Type's struct protobuf message. Note that for bytes sequence
		// (like delimited_bytes.delimiter)
		// the delimiter must be base64 encoded. For example, if you want
		// to set a delimiter to a single byte character "#", it should
		// be set to "Iw==", which is the base64 encoding of the byte
		// sequence "#".
		row_key_schema?: string
		automated_backup_policy?: matchN(1, [#automated_backup_policy, list.MaxItems(1) & [...#automated_backup_policy]])
		column_family?: matchN(1, [#column_family, [...#column_family]])
		timeouts?: #timeouts

		// A list of predefined keys to split the table on. !> Warning:
		// Modifying the split_keys of an existing table will cause
		// Terraform to delete/recreate the entire google_bigtable_table
		// resource.
		split_keys?: [...string]
	})

	#automated_backup_policy: close({
		// How frequently automated backups should occur.
		frequency?: string

		// How long the automated backups should be retained.
		retention_period?: string
	})

	#column_family: close({
		// The name of the column family.
		family!: string

		// The type of the column family.
		type?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
