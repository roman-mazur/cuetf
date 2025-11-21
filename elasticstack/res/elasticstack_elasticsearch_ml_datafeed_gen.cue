package res

#elasticstack_elasticsearch_ml_datafeed: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ml_datafeed")
	close({
		// If set, the datafeed performs aggregation searches. Support for
		// aggregations is limited and should be used only with low
		// cardinality data. This should be a JSON object representing
		// the aggregations to be performed.
		aggregations?: string

		// Datafeeds might search over long time periods, for several
		// months or years. This search is split into time chunks in
		// order to ensure the load on Elasticsearch is managed. Chunking
		// configuration controls how the size of these time chunks are
		// calculated; it is an advanced configuration option.
		chunking_config?: close({
			// The chunking mode. Can be `auto`, `manual`, or `off`. In `auto`
			// mode, the chunk size is dynamically calculated. In `manual`
			// mode, chunking is applied according to the specified
			// `time_span`. In `off` mode, no chunking is applied.
			mode!: string

			// The time span for each chunk. Only applicable and required when
			// mode is `manual`. Must be a valid duration.
			time_span?: string
		})

		// A numerical character string that uniquely identifies the
		// datafeed. This identifier can contain lowercase alphanumeric
		// characters (a-z and 0-9), hyphens, and underscores. It must
		// start and end with alphanumeric characters.
		datafeed_id!: string

		// The interval at which scheduled queries are made while the
		// datafeed runs in real time. The default value is either the
		// bucket span for short bucket spans, or, for longer bucket
		// spans, a sensible fraction of the bucket span. When
		// `frequency` is shorter than the bucket span, interim results
		// for the last (partial) bucket are written then eventually
		// overwritten by the full bucket results. If the datafeed uses
		// aggregations, this value must be divisible by the interval of
		// the date histogram aggregation.
		frequency?: string

		// Specifies whether the datafeed checks for missing data and the
		// size of the window. The datafeed can optionally search over
		// indices that have already been read in an effort to determine
		// whether any data has subsequently been added to the index. If
		// missing data is found, it is a good indication that the
		// `query_delay` is set too low and the data is being indexed
		// after the datafeed has passed that moment in time. This check
		// runs only on real-time datafeeds.
		delayed_data_check_config?: close({
			// The window of time that is searched for late data. This window
			// of time ends with the latest finalized bucket. It defaults to
			// null, which causes an appropriate `check_window` to be
			// calculated when the real-time datafeed runs.
			check_window?: string

			// Specifies whether the datafeed periodically checks for delayed
			// data.
			enabled!: bool
		})

		// Internal identifier of the resource
		id?: string

		// An array of index names. Wildcards are supported. If any of the
		// indices are in remote clusters, the machine learning nodes
		// must have the `remote_cluster_client` role.
		indices!: [...string]

		// Specifies index expansion options that are used during search.
		indices_options?: close({
			// If true, wildcard indices expressions that resolve into no
			// concrete indices are ignored. This includes the `_all` string
			// or when no indices are specified.
			allow_no_indices?: bool

			// Type of index that wildcard patterns can match. If the request
			// can target data streams, this argument determines whether
			// wildcard expressions match hidden data streams. Supports
			// comma-separated values.
			expand_wildcards?: [...string]

			// If true, unavailable indices (missing or closed) are ignored.
			ignore_unavailable?: bool
		})

		// Identifier for the anomaly detection job. The job must exist
		// before creating the datafeed.
		job_id!: string

		// If a real-time datafeed has never seen any data (including
		// during any initial training period), it automatically stops
		// and closes the associated job after this many real-time
		// searches return no documents. In other words, it stops after
		// `frequency` times `max_empty_searches` of real-time operation.
		// If not set, a datafeed with no end time that sees no data
		// remains started until it is explicitly stopped.
		max_empty_searches?: number
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// The Elasticsearch query domain-specific language (DSL). This
		// value corresponds to the query object in an Elasticsearch
		// search POST body. All the options that are supported by
		// Elasticsearch can be used, as this object is passed verbatim
		// to Elasticsearch. By default uses `{"match_all": {"boost":
		// 1}}`.
		query?: string

		// The number of seconds behind real time that data is queried.
		// For example, if data from 10:04 a.m. might not be searchable
		// in Elasticsearch until 10:06 a.m., set this property to 120
		// seconds. The default value is randomly selected between `60s`
		// and `120s`. This randomness improves the query performance
		// when there are multiple jobs running on the same node.
		query_delay?: string

		// Specifies runtime fields for the datafeed search. This should
		// be a JSON object representing the runtime field mappings.
		runtime_mappings?: string

		// Specifies scripts that evaluate custom expressions and returns
		// script fields to the datafeed. The detector configuration
		// objects in a job can contain functions that use these script
		// fields. This should be a JSON object representing the script
		// fields.
		script_fields?: string

		// The size parameter that is used in Elasticsearch searches when
		// the datafeed does not use aggregations. The maximum value is
		// the value of `index.max_result_window`, which is 10,000 by
		// default.
		scroll_size?: number
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

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
