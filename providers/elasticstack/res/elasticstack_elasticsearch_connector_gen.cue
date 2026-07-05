package res

elasticstack_elasticsearch_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_connector")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// ID of the API key used by the connector service for authorization.
		api_key_id?: string

		// User-supplied connector configuration values keyed by field name. Each
		// element must set exactly one of `string`, `number`, `bool`, `json`, or
		// `secret_value`. Removing a key stops managing it but does not unset the
		// value server-side.
		configuration_values?: [string]: close({
			// Boolean configuration value.
			"bool"?: bool

			// JSON-encoded object or array configuration value.
			json?: string

			// Numeric configuration value (integer or float).
			"number"?: number

			// Write-only secret configuration value. Drift is detected via private-state
			// hashing (see resource documentation).
			secret_value?: string

			// String configuration value.
			"string"?: string
		})

		// ID of the connector secret holding the API key (Elastic-managed connectors only).
		api_key_secret_id?: string

		// Connector feature flags. Changes trigger `PUT /_connector/{id}/_features`.
		features?: close({
			// Feature flag for `document_level_security`.
			document_level_security?: close({
				// Whether the feature is enabled.
				enabled!: bool
			})

			// Feature flag for `incremental_sync`.
			incremental_sync?: close({
				// Whether the feature is enabled.
				enabled!: bool
			})

			// Feature flag for `native_connector_api_keys`.
			native_connector_api_keys?: close({
				// Whether the feature is enabled.
				enabled!: bool
			})

			// Sync rules feature flags.
			sync_rules?: close({
				// Feature flag for `advanced`.
				advanced?: close({
					// Whether the feature is enabled.
					enabled!: bool
				})

				// Feature flag for `basic`.
				basic?: close({
					// Whether the feature is enabled.
					enabled!: bool
				})
			})
		})

		// Unique connector identifier. When omitted, Elasticsearch auto-generates an ID on create.
		connector_id?: string

		// Ingest pipeline settings applied to synced documents. Changes trigger `PUT
		// /_connector/{id}/_pipeline`.
		pipeline?: close({
			// Whether to extract binary content during ingestion.
			extract_binary_content!: bool

			// Ingest pipeline name.
			name!: string

			// Whether to reduce whitespace in extracted text.
			reduce_whitespace!: bool

			// Whether to run ML inference during ingestion.
			run_ml_inference!: bool
		})

		// Connector description.
		description?: string

		// Sync scheduling for full, incremental, and access-control jobs. Changes
		// trigger `PUT /_connector/{id}/_scheduling`.
		scheduling?: close({
			// Schedule for the `access_control` sync job type.
			access_control?: close({
				// Whether this scheduled job type is enabled.
				enabled!: bool

				// Cron expression accepted by the Elasticsearch scheduler.
				interval!: string
			})

			// Schedule for the `full` sync job type.
			full?: close({
				// Whether this scheduled job type is enabled.
				enabled!: bool

				// Cron expression accepted by the Elasticsearch scheduler.
				interval!: string
			})

			// Schedule for the `incremental` sync job type.
			incremental?: close({
				// Whether this scheduled job type is enabled.
				enabled!: bool

				// Cron expression accepted by the Elasticsearch scheduler.
				interval!: string
			})
		})

		// Composite identifier in the form `<cluster_uuid>/<connector_id>`.
		id?: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// Destination Elasticsearch index name. When omitted, Elasticsearch may assign a default on create.
		index_name?: string

		// Whether this is an Elastic-managed connector (`true`) or self-managed
		// (`false`). Defaults to `false` on the Elasticsearch side when omitted.
		is_native?: bool

		// Analyzer language for the connector index.
		language?: string

		// Human-readable connector name.
		name?: string

		// Connector service type (for example `postgresql`, `mysql`, `github`). New
		// service types may be added over time; the provider does not validate against
		// a fixed enum.
		service_type!: string
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
