package res

import "list"

#google_storage_insights_report_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_insights_report_config")
	close({
		// The editable display name of the inventory report
		// configuration. Has a limit of 256 characters. Can be empty.
		display_name?: string
		csv_options?: matchN(1, [#csv_options, list.MaxItems(1) & [...#csv_options]])

		// If set, all the inventory report details associated with this
		// report configuration are deleted.
		force_destroy?: bool
		id?:            string
		frequency_options?: matchN(1, [#frequency_options, list.MaxItems(1) & [...#frequency_options]])

		// The location of the ReportConfig. The source and destination
		// buckets specified in the ReportConfig
		// must be in the same location.
		location!: string
		object_metadata_report_options?: matchN(1, [#object_metadata_report_options, list.MaxItems(1) & [...#object_metadata_report_options]])
		parquet_options?: matchN(1, [#parquet_options, list.MaxItems(1) & [...#parquet_options]])

		// The UUID of the inventory report configuration.
		name?:     string
		timeouts?: #timeouts
		project?:  string
	})

	#csv_options: close({
		// The delimiter used to separate the fields in the inventory
		// report CSV file.
		delimiter?: string

		// The boolean that indicates whether or not headers are included
		// in the inventory report CSV file.
		header_required?: bool

		// The character used to separate the records in the inventory
		// report CSV file.
		record_separator?: string
	})

	#frequency_options: close({
		end_date!: matchN(1, [_#defs."/$defs/frequency_options/$defs/end_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/frequency_options/$defs/end_date"]])
		start_date!: matchN(1, [_#defs."/$defs/frequency_options/$defs/start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/frequency_options/$defs/start_date"]])

		// The frequency in which inventory reports are generated. Values
		// are DAILY or WEEKLY. Possible values: ["DAILY", "WEEKLY"]
		frequency!: string
	})

	#object_metadata_report_options: close({
		storage_destination_options!: matchN(1, [_#defs."/$defs/object_metadata_report_options/$defs/storage_destination_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/object_metadata_report_options/$defs/storage_destination_options"]])
		storage_filters?: matchN(1, [_#defs."/$defs/object_metadata_report_options/$defs/storage_filters", list.MaxItems(1) & [..._#defs."/$defs/object_metadata_report_options/$defs/storage_filters"]])

		// The metadata fields included in an inventory report.
		metadata_fields!: [...string]
	})

	#parquet_options: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/frequency_options/$defs/end_date": close({
		// The day of the month to stop generating inventory reports.
		day!: number

		// The month to stop generating inventory reports.
		month!: number

		// The year to stop generating inventory reports
		year!: number
	})

	_#defs: "/$defs/frequency_options/$defs/start_date": close({
		// The day of the month to start generating inventory reports.
		day!: number

		// The month to start generating inventory reports.
		month!: number

		// The year to start generating inventory reports
		year!: number
	})

	_#defs: "/$defs/object_metadata_report_options/$defs/storage_destination_options": close({
		// The destination bucket that stores the generated inventory
		// reports.
		bucket!: string

		// The path within the destination bucket to store generated
		// inventory reports.
		destination_path?: string
	})

	_#defs: "/$defs/object_metadata_report_options/$defs/storage_filters": close({
		// The filter to use when specifying which bucket to generate
		// inventory reports for.
		bucket?: string
	})
}
