package res

import "list"

#google_logging_saved_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_logging_saved_query")
	close({
		// Output only. The creation timestamp of the saved query.
		create_time?: string

		// A description of the saved query.
		description?: string

		// The user-visible display name of the saved query.
		display_name!: string
		id?:           string

		// The location of the resource see
		// [supported
		// regions](https://docs.cloud.google.com/logging/docs/region-support#bucket-regions).
		location!: string

		// The name of the saved query. For example: 'my-saved-query'
		name!: string

		// The parent of the resource.
		parent!: string
		logging_query?: matchN(1, [#logging_query, list.MaxItems(1) & [...#logging_query]])
		ops_analytics_query?: matchN(1, [#ops_analytics_query, list.MaxItems(1) & [...#ops_analytics_query]])
		timeouts?: #timeouts

		// Output only. The last update timestamp of the saved query.
		update_time?: string

		// The visibility of the saved query. Possible values: ["SHARED",
		// "PRIVATE"]
		visibility!: string
	})

	#logging_query: close({
		// An [advanced logs
		// filter](https://cloud.google.com/logging/docs/view/advanced-filters)
		// which
		// is used to match log entries.
		filter!: string
		summary_fields?: matchN(1, [_#defs."/$defs/logging_query/$defs/summary_fields", [..._#defs."/$defs/logging_query/$defs/summary_fields"]])

		// Characters will be counted from the end of the string.
		summary_field_end?: number

		// Characters will be counted from the start of the string.
		summary_field_start?: number
	})

	#ops_analytics_query: close({
		// A logs analytics SQL query, which generally follows BigQuery
		// format.
		sql_query_text!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/logging_query/$defs/summary_fields": close({
		// The field from the LogEntry to include in the summary line.
		field?: string
	})
}
