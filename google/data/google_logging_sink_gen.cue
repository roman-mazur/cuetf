package data

#google_logging_sink: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_logging_sink")
	close({
		// Options that affect sinks exporting data to BigQuery.
		bigquery_options?: [...close({
			use_partitioned_tables?: bool
		})]

		// A description of this sink. The maximum length of the
		// description is 8000 characters.
		description?: string

		// The destination of the sink (or, in other words, where logs are
		// written to). Can be a Cloud Storage bucket, a PubSub topic, or
		// a BigQuery dataset. Examples:
		// "storage.googleapis.com/[GCS_BUCKET]"
		// "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
		// "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]"
		// The writer associated with the sink must have access to write
		// to the above resource.
		destination?: string

		// If set to True, then this sink is disabled and it does not
		// export any log entries.
		disabled?: bool

		// Log entries that match any of the exclusion filters will not be
		// exported. If a log entry is matched by both filter and one of
		// exclusion's filters, it will not be exported.
		exclusions?: [...close({
			description?: string
			disabled?:    bool
			filter?:      string
			name?:        string
		})]

		// The filter to apply when exporting logs. Only log entries that
		// match the filter are exported.
		filter?: string

		// Required. An identifier for the resource in format:
		// "projects/[PROJECT_ID]/sinks/[SINK_NAME]",
		// "organizations/[ORGANIZATION_ID]/sinks/[SINK_NAME]",
		// "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_NAME]",
		// "folders/[FOLDER_ID]/sinks/[SINK_NAME]"
		id!: string

		// The name of the logging sink.
		name?: string

		// The identity associated with this sink. This identity must be
		// granted write access to the configured destination.
		writer_identity?: string
	})
}
