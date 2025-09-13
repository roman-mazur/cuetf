package res

import "list"

#google_logging_project_sink: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_logging_project_sink")
	close({
		// A service account provided by the caller that will be used to
		// write the log entries. The format must be
		// serviceAccount:some@email. This field can only be specified if
		// you are routing logs to a destination outside this sink's
		// project. If not specified, a Logging service account will
		// automatically be generated.
		custom_writer_identity?: string

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
		destination!: string

		// If set to True, then this sink is disabled and it does not
		// export any log entries.
		disabled?: bool

		// The filter to apply when exporting logs. Only log entries that
		// match the filter are exported.
		filter?: string

		// The name of the logging sink.
		name!: string

		// The ID of the project to create the sink in. If omitted, the
		// project associated with the provider is used.
		project?: string
		id?:      string
		bigquery_options?: matchN(1, [#bigquery_options, list.MaxItems(1) & [...#bigquery_options]])
		exclusions?: matchN(1, [#exclusions, [...#exclusions]])

		// Whether or not to create a unique identity associated with this
		// sink. If false (the legacy behavior), then the writer_identity
		// used is serviceAccount:cloud-logs@system.gserviceaccount.com.
		// If true (default), then a unique service account is created
		// and used for this sink. If you wish to publish logs across
		// projects, you must set unique_writer_identity to true.
		unique_writer_identity?: bool

		// The identity associated with this sink. This identity must be
		// granted write access to the configured destination.
		writer_identity?: string
	})

	#bigquery_options: close({
		// Whether to use BigQuery's partition tables. By default, Logging
		// creates dated tables based on the log entries' timestamps,
		// e.g. syslog_20170523. With partitioned tables the date suffix
		// is no longer present and special query syntax has to be used
		// instead. In both cases, tables are sharded based on UTC
		// timezone.
		use_partitioned_tables!: bool
	})

	#exclusions: close({
		// A description of this exclusion.
		description?: string

		// If set to True, then this exclusion is disabled and it does not
		// exclude any log entries
		disabled?: bool

		// An advanced logs filter that matches the log entries to be
		// excluded. By using the sample function, you can exclude less
		// than 100% of the matching log entries
		filter!: string

		// A client-assigned identifier, such as
		// "load-balancer-exclusion". Identifiers are limited to 100
		// characters and can include only letters, digits, underscores,
		// hyphens, and periods. First character has to be alphanumeric.
		name!: string
	})
}
