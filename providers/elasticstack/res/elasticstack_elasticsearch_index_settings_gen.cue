package res

elasticstack_elasticsearch_index_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_index_settings")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// The maximum number of tokens that can be produced using _analyze API.
		analyze_max_token_count?: number
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

		// Set the number of replicas to the node count in the cluster. Set to a dash
		// delimited lower and upper bound (e.g. 0-5) or use all for the upper bound
		// (e.g. 0-all)
		auto_expand_replicas?: string

		// Set to `true` to disable index metadata reads and writes.
		blocks_metadata?: bool

		// Set to `true` to disable read operations against the index.
		blocks_read?: bool

		// Set to `true` to make the index and index metadata read only, `false` to
		// allow writes and metadata changes.
		blocks_read_only?: bool

		// Identical to `index.blocks.read_only` but allows deleting the index to free up resources.
		blocks_read_only_allow_delete?: bool

		// Set to `true` to disable data write operations against the index. This
		// setting does not affect metadata.
		blocks_write?: bool

		// The default ingest node pipeline for this index. Index requests will fail if
		// the default pipeline is set and the pipeline does not exist.
		default_pipeline?: string

		// Final ingest pipeline for the index. Indexing requests will fail if the final
		// pipeline is set and the pipeline does not exist. The final pipeline always
		// runs after the request pipeline (if specified) and the default pipeline (if
		// it exists). The special pipeline name `_none` indicates no ingest pipeline
		// will run.
		final_pipeline?: string

		// The length of time that a deleted document's version number remains available
		// for further versioned operations.
		gc_deletes?: string

		// The maximum number of characters that will be analyzed for a highlight request.
		highlight_max_analyzed_offset?: number

		// Computed `<cluster_uuid>/<index_name>` identifier of the target index.
		id?: string

		// Name of the target Elasticsearch index; changing it forces replacement. The
		// name is treated as an already-resolved concrete index (no date-math
		// resolution).
		index!: string

		// Set which logging level to use for the search slow log, can be: `warn`, `info`, `debug`, `trace`
		indexing_slowlog_level?: string

		// Set the number of characters of the `_source` to include in the slowlog
		// lines. `false` or `0` skips logging the source entirely; `true` logs the
		// entire source regardless of size. The original `_source` is reformatted by
		// default to make sure that it fits on a single log line.
		indexing_slowlog_source?: string

		// Set the cutoff for shard level slow search logging of slow searches for
		// indexing queries, in time units, e.g. `2s`
		indexing_slowlog_threshold_index_debug?: string

		// Set the cutoff for shard level slow search logging of slow searches for
		// indexing queries, in time units, e.g. `5s`
		indexing_slowlog_threshold_index_info?: string

		// Set the cutoff for shard level slow search logging of slow searches for
		// indexing queries, in time units, e.g. `500ms`
		indexing_slowlog_threshold_index_trace?: string

		// Set the cutoff for shard level slow search logging of slow searches for
		// indexing queries, in time units, e.g. `10s`
		indexing_slowlog_threshold_index_warn?: string

		// The maximum number of fields in an index. Field type parameters count towards
		// this limit. The default value is 1000.
		mapping_total_fields_limit?: number

		// The maximum number of `docvalue_fields` that are allowed in a query.
		max_docvalue_fields_search?: number

		// The maximum value of `from + size` for inner hits definition and top hits
		// aggregations to this index.
		max_inner_result_window?: number

		// The maximum allowed difference between min_gram and max_gram for
		// NGramTokenizer and NGramTokenFilter.
		max_ngram_diff?: number

		// Maximum number of refresh listeners available on each shard of the index.
		max_refresh_listeners?: number

		// The maximum length of regex that can be used in Regexp Query.
		max_regex_length?: number

		// The maximum value of `window_size` for `rescore` requests in searches of this index.
		max_rescore_window?: number

		// The maximum value of `from + size` for searches to this index.
		max_result_window?: number

		// The maximum number of `script_fields` that are allowed in a query.
		max_script_fields?: number

		// The maximum allowed difference between max_shingle_size and min_shingle_size
		// for ShingleTokenFilter.
		max_shingle_diff?: number

		// The maximum number of terms that can be used in Terms Query.
		max_terms_count?: number

		// Number of shard replicas.
		number_of_replicas?: number

		// Wildcard (*) patterns matching one or more fields. Defaults to '*', which
		// matches all fields eligible for term-level queries, excluding metadata
		// fields.
		query_default_field?: [...string]

		// How often to perform a refresh operation, which makes recent changes to the
		// index visible to search. Can be set to `-1` to disable refresh.
		refresh_interval?: string

		// Controls shard allocation for this index. It can be set to: `all` ,
		// `primaries` , `new_primaries` , `none`.
		routing_allocation_enable?: string

		// Enables shard rebalancing for this index. It can be set to: `all`,
		// `primaries` , `replicas` , `none`.
		routing_rebalance_enable?: string

		// How long a shard can not receive a search or get request until it’s considered search idle.
		search_idle_after?: string

		// Set which logging level to use for the search slow log, can be: `warn`, `info`, `debug`, `trace`
		search_slowlog_level?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// fetch phase, in time units, e.g. `2s`
		search_slowlog_threshold_fetch_debug?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// fetch phase, in time units, e.g. `5s`
		search_slowlog_threshold_fetch_info?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// fetch phase, in time units, e.g. `500ms`
		search_slowlog_threshold_fetch_trace?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// fetch phase, in time units, e.g. `10s`
		search_slowlog_threshold_fetch_warn?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// query phase, in time units, e.g. `2s`
		search_slowlog_threshold_query_debug?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// query phase, in time units, e.g. `5s`
		search_slowlog_threshold_query_info?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// query phase, in time units, e.g. `500ms`
		search_slowlog_threshold_query_trace?: string

		// Set the cutoff for shard level slow search logging of slow searches in the
		// query phase, in time units, e.g. `10s`
		search_slowlog_threshold_query_warn?: string

		// Flat JSON object of dynamic index settings not covered by the typed
		// attributes (e.g. `{"max_result_window": 20000}`). Use flat dotted setting
		// keys; values are scalars or arrays of scalars (including empty arrays).
		// Creation-time-only (static) settings, nested objects, explicit `null` values
		// and object or null array elements are rejected. To reset a setting, omit it.
		// Keys set here must not also be set via a typed attribute.
		settings_json?: string

		// Time to delay the allocation of replica shards which become unassigned
		// because a node has left, in time units, e.g. `10s`
		unassigned_node_left_delayed_timeout?: string
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
