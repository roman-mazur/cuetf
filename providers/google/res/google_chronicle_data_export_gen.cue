package res

google_chronicle_data_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_data_export")
	close({
		ingestion_labels?: matchN(1, [#ingestion_labels, [...#ingestion_labels]])
		timeouts?: #timeouts

		// Timestamp indicating when the DataExport resource was created.
		create_time?: string

		// The unique identifier for the data export.
		data_export_id?: string

		// Status of the current export.
		data_export_status?: [...close({
			data_rbac_filtered?: bool
			error?:              string
			exported_glob_patterns?: [...string]
			stage?: string
		})]

		// Last, exclusive time from the range.
		end_time!: string

		// The estimated export volume in bytes.
		estimated_volume?: number

		// Actual volume of data exported.
		exported_volume?: number

		// Link to the destination Cloud Storage bucket.
		gcs_bucket!: string
		id?:         string

		// The specific log types to include in the Data Export request.
		include_log_types?: [...string]

		// The unique identifier for the Chronicle instance.
		instance!: string

		// The location of the resource.
		location!: string

		// The resource name of the data export.
		name?: string

		// The namespaces used to filter the export.
		namespaces?: [...string]

		// Start, inclusive time from the range.
		start_time!: string
		project?:    string

		// Timestamp indicating the last time the DataExport resource was updated.
		update_time?: string
	})

	#ingestion_labels: close({
		// The key.
		key!: string

		// The value.
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
