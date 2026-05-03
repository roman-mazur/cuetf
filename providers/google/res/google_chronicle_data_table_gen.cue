package res

import "list"

#google_chronicle_data_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_data_table")
	close({
		column_info?: matchN(1, [#column_info, [...#column_info]])
		scope_info?: matchN(1, [#scope_info, list.MaxItems(1) & [...#scope_info]])
		timeouts?: #timeouts

		// The count of rows in the data table.
		approximate_row_count?: number

		// Table create time
		create_time?: string

		// The ID to use for the data table. This is also the display name
		// for
		// the data table. It must satisfy the following requirements:
		// - Starts with letter.
		// - Contains only letters, numbers and underscore.
		// - Must be unique and has length < 256.
		data_table_id!: string

		// Data table unique id
		data_table_uuid?: string

		// The policy governing the deletion of the data table.
		// If set to 'FORCE', allows the deletion of the data table even
		// if it contains rows.
		// If set to 'DEFAULT',or if the field is omitted, the data table
		// must be empty before it can be deleted.
		// Possible values: DEFAULT, FORCE
		deletion_policy?: string

		// A user-provided description of the data table.
		description!: string

		// The unique display name of the data table.
		display_name?: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the data table
		// Format:
		// "{project}/locations/{region}/instances/{instance}/dataTables/{data_table}"
		name?:    string
		project?: string

		// User-provided TTL of the data table.
		row_time_to_live?: string

		// Last update time of the TTL of the data table.
		row_time_to_live_update_time?: string

		// The count of rules using the data table.
		rule_associations_count?: number

		// The resource names for the associated Rules that use this
		// data table. Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}.
		// {rule} here refers to the rule id.
		rules?: [...string]

		// Possible values:
		// USER
		// RULE
		// SEARCH
		update_source?: string

		// Table update time
		update_time?: string
	})

	#column_info: close({
		// Column Index. 0,1,2...
		column_index!: number

		// Column type can be STRING, CIDR (Ex- 10.1.1.0/24), REGEX
		// Possible values:
		// STRING
		// REGEX
		// CIDR
		// NUMBER Possible values: ["STRING", "REGEX", "CIDR", "NUMBER"]
		column_type?: string

		// Whether to include this column in the calculation of the row
		// ID.
		// If no columns have key_column = true, all columns will be
		// included in the
		// calculation of the row ID.
		key_column?: bool

		// Entity proto field path that the column is mapped to
		mapped_column_path?: string

		// Original column name of the Data Table (present in the CSV
		// header in case
		// of creation of data tables using file uploads). It must satisfy
		// the
		// following requirements:
		// - Starts with letter.
		// - Contains only letters, numbers and underscore.
		// - Must be unique and has length < 256
		original_column!: string

		// Whether the column is a repeated values column.
		repeated_values?: bool
	})

	#scope_info: close({
		// Contains the list of scope names of the data table. If the list
		// is empty,
		// the data table is treated as unscoped. The scope names should
		// be
		// full resource names and should be of the format:
		// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope_name}"
		data_access_scopes!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
