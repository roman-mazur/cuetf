package res

#google_chronicle_data_table_row: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_data_table_row")
	close({
		timeouts?: #timeouts

		// DataTableRow create time
		create_time?: string

		// The ID of the parent DataTable.
		data_table_id!: string

		// The ID of the DataTable Row.
		data_table_row?: string
		id?:             string

		// The Chronicle instance ID.
		instance!: string

		// The GCP location of the Chronicle instance.
		location!: string

		// Identifier. The resource name of the data table row.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/dataTables/{data_table_id}/dataTableRows/{data_table_row}
		name?:    string
		project?: string

		// User-provided TTL of the data table row.
		row_time_to_live?: string

		// DataTableRow update time
		update_time?: string

		// All column values for a single row. The values should be in the
		// same order
		// as the columns of the data tables.
		values!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
