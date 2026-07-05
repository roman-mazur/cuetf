package data

elasticstack_elasticsearch_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_connector")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// ID of the API key used by the connector service for authorization.
		api_key_id?: string

		// Connector feature flags.
		features?: close({
			// Feature flag for `document_level_security`.
			document_level_security?: close({
				// Whether the feature is enabled.
				enabled?: bool
			})

			// Feature flag for `incremental_sync`.
			incremental_sync?: close({
				// Whether the feature is enabled.
				enabled?: bool
			})

			// Feature flag for `native_connector_api_keys`.
			native_connector_api_keys?: close({
				// Whether the feature is enabled.
				enabled?: bool
			})

			// Sync rules feature flags.
			sync_rules?: close({
				// Feature flag for `advanced`.
				advanced?: close({
					// Whether the feature is enabled.
					enabled?: bool
				})

				// Feature flag for `basic`.
				basic?: close({
					// Whether the feature is enabled.
					enabled?: bool
				})
			})
		})

		// ID of the connector secret holding the API key (Elastic-managed connectors only).
		api_key_secret_id?: string

		// Ingest pipeline settings applied to synced documents.
		pipeline?: close({
			// Whether to extract binary content during ingestion.
			extract_binary_content?: bool

			// Ingest pipeline name.
			name?: string

			// Whether to reduce whitespace in extracted text.
			reduce_whitespace?: bool

			// Whether to run ML inference during ingestion.
			run_ml_inference?: bool
		})

		// Full registered configuration schema document from the connector service.
		// JSON-encoded; use `jsondecode()` to inspect.
		configuration?: string

		// Sync scheduling for full, incremental, and access-control jobs.
		scheduling?: close({
			// Schedule for the `access_control` sync job type.
			access_control?: close({
				// Whether this scheduled job type is enabled.
				enabled?: bool

				// Cron expression accepted by the Elasticsearch scheduler.
				interval?: string
			})

			// Schedule for the `full` sync job type.
			full?: close({
				// Whether this scheduled job type is enabled.
				enabled?: bool

				// Cron expression accepted by the Elasticsearch scheduler.
				interval?: string
			})

			// Schedule for the `incremental` sync job type.
			incremental?: close({
				// Whether this scheduled job type is enabled.
				enabled?: bool

				// Cron expression accepted by the Elasticsearch scheduler.
				interval?: string
			})
		})

		// Unique connector identifier to look up.
		connector_id!: string

		// Custom per-job-type scheduling overrides. JSON-encoded object; use `jsondecode()` to inspect.
		custom_scheduling?: string

		// Connector description.
		description?: string

		// Connector-level error message, if any.
		error?: string

		// Connector filtering rules. JSON-encoded array; use `jsondecode()` to inspect.
		filtering?: string

		// Composite identifier in the form `<cluster_uuid>/<connector_id>`.
		id?: string

		// Destination Elasticsearch index name.
		index_name?: string

		// Whether this is an Elastic-managed connector (`true`) or self-managed (`false`).
		is_native?: bool

		// Analyzer language for the connector index.
		language?: string

		// Error message from the last access-control sync job, if any.
		last_access_control_sync_error?: string

		// ISO 8601 timestamp when the last access-control sync was scheduled.
		last_access_control_sync_scheduled_at?: string

		// Status of the last access-control sync job.
		last_access_control_sync_status?: string

		// Number of documents deleted during the last sync job.
		last_deleted_document_count?: number

		// ISO 8601 timestamp when the last incremental sync was scheduled.
		last_incremental_sync_scheduled_at?: string

		// Number of documents indexed during the last sync job.
		last_indexed_document_count?: number

		// ISO 8601 timestamp when the connector service last reported in.
		last_seen?: string

		// Error message from the last sync job, if any.
		last_sync_error?: string

		// ISO 8601 timestamp when the last sync job was scheduled.
		last_sync_scheduled_at?: string

		// Status of the last sync job.
		last_sync_status?: string

		// ISO 8601 timestamp of the last completed sync.
		last_synced?: string

		// Human-readable connector name.
		name?: string

		// Connector service type (for example `postgresql`, `mysql`, `github`).
		service_type?: string

		// Connector lifecycle status (for example `created`, `connected`, `error`).
		status?: string

		// Opaque connector sync cursor state. JSON-encoded; use `jsondecode()` to inspect.
		sync_cursor?: string

		// Whether a sync job is queued to run immediately.
		sync_now?: bool
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// SHA-256 hex fingerprint (64 hexadecimal characters, no colons or separators)
		// of the server TLS certificate used to pin the connection instead of a full
		// CA chain
		ca_fingerprint?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to, this must
		// include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
