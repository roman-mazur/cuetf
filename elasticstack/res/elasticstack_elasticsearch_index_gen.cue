package res

#elasticstack_elasticsearch_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_index")
	close({
		// A JSON string describing the analyzers applied to the index.
		analysis_analyzer?: string

		// A JSON string describing the char_filters applied to the index.
		analysis_char_filter?: string

		// A JSON string describing the filters applied to the index.
		analysis_filter?: string

		// A JSON string describing the normalizers applied to the index.
		analysis_normalizer?: string

		// A JSON string describing the tokenizers applied to the index.
		analysis_tokenizer?: string

		// The maximum number of tokens that can be produced using
		// _analyze API.
		analyze_max_token_count?: number

		// Set the number of replicas to the node count in the cluster.
		// Set to a dash delimited lower and upper bound (e.g. 0-5) or
		// use all for the upper bound (e.g. 0-all)
		auto_expand_replicas?: string

		// Set to `true` to disable index metadata reads and writes.
		blocks_metadata?: bool

		// Set to `true` to disable read operations against the index.
		blocks_read?: bool

		// Set to `true` to make the index and index metadata read only,
		// `false` to allow writes and metadata changes.
		blocks_read_only?: bool

		// Identical to `index.blocks.read_only` but allows deleting the
		// index to free up resources.
		blocks_read_only_allow_delete?: bool

		// Set to `true` to disable data write operations against the
		// index. This setting does not affect metadata.
		blocks_write?: bool

		// The `default` value compresses stored data with LZ4
		// compression, but this can be set to `best_compression` which
		// uses DEFLATE for a higher compression ratio. This can be set
		// only on creation.
		codec?: string

		// The default ingest node pipeline for this index. Index requests
		// will fail if the default pipeline is set and the pipeline does
		// not exist.
		default_pipeline?: string

		// Whether to allow Terraform to destroy the index. Unless this
		// field is set to false in Terraform state, a terraform destroy
		// or terraform apply command that deletes the instance will
		// fail.
		deletion_protection?: bool

		// Final ingest pipeline for the index. Indexing requests will
		// fail if the final pipeline is set and the pipeline does not
		// exist. The final pipeline always runs after the request
		// pipeline (if specified) and the default pipeline (if it
		// exists). The special pipeline name _none indicates no ingest
		// pipeline will run.
		final_pipeline?: string

		// The length of time that a deleted document's version number
		// remains available for further versioned operations.
		gc_deletes?: string

		// The maximum number of characters that will be analyzed for a
		// highlight request.
		highlight_max_analyzed_offset?: number

		// Internal identifier of the resource
		id?: string

		// Set which logging level to use for the search slow log, can be:
		// `warn`, `info`, `debug`, `trace`
		indexing_slowlog_level?: string

		// Set the number of characters of the `_source` to include in the
		// slowlog lines, `false` or `0` will skip logging the source
		// entirely and setting it to `true` will log the entire source
		// regardless of size. The original `_source` is reformatted by
		// default to make sure that it fits on a single log line.
		indexing_slowlog_source?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches for indexing queries, in time units, e.g. `2s`
		indexing_slowlog_threshold_index_debug?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches for indexing queries, in time units, e.g. `5s`
		indexing_slowlog_threshold_index_info?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches for indexing queries, in time units, e.g. `500ms`
		indexing_slowlog_threshold_index_trace?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches for indexing queries, in time units, e.g. `10s`
		indexing_slowlog_threshold_index_warn?: string

		// Indicates whether cached filters are pre-loaded for nested
		// queries. This can be set only on creation.
		load_fixed_bitset_filters_eagerly?: bool

		// Set index level coercion setting that is applied to all mapping
		// types.
		mapping_coerce?: bool

		// Mapping for fields in the index.
		// If specified, this mapping can include: field names, [field
		// data
		// types](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html),
		// [mapping
		// parameters](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-params.html).
		// **NOTE:**
		// - Changing datatypes in the existing _mappings_ will force
		// index to be re-created.
		// - Removing field will be ignored by default same as
		// elasticsearch. You need to recreate the index to remove field
		// completely.
		mappings?: string

		// Period to wait for a connection to the master node. If no
		// response is received before the timeout expires, the request
		// fails and returns an error. Defaults to `30s`. This value is
		// ignored when running against Serverless projects.
		master_timeout?: string

		// The maximum number of `docvalue_fields` that are allowed in a
		// query.
		max_docvalue_fields_search?: number

		// The maximum value of `from + size` for inner hits definition
		// and top hits aggregations to this index.
		max_inner_result_window?: number

		// The maximum allowed difference between min_gram and max_gram
		// for NGramTokenizer and NGramTokenFilter.
		max_ngram_diff?: number

		// Maximum number of refresh listeners available on each shard of
		// the index.
		max_refresh_listeners?: number

		// The maximum length of regex that can be used in Regexp Query.
		max_regex_length?: number
		alias?: matchN(1, [#alias, [...#alias]])
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])
		settings?: matchN(1, [#settings, [...#settings]])

		// The maximum value of `window_size` for `rescore` requests in
		// searches of this index.
		max_rescore_window?: number

		// The maximum value of `from + size` for searches to this index.
		max_result_window?: number

		// The maximum number of `script_fields` that are allowed in a
		// query.
		max_script_fields?: number

		// The maximum allowed difference between max_shingle_size and
		// min_shingle_size for ShingleTokenFilter.
		max_shingle_diff?: number

		// The maximum number of terms that can be used in Terms Query.
		max_terms_count?: number

		// Name of the index you wish to create.
		name!: string

		// Number of shard replicas.
		number_of_replicas?: number

		// Value used with number_of_shards to route documents to a
		// primary shard. This can be set only on creation.
		number_of_routing_shards?: number

		// Number of shards for the index. This can be set only on
		// creation.
		number_of_shards?: number

		// Wildcard (*) patterns matching one or more fields. Defaults to
		// '*', which matches all fields eligible for term-level queries,
		// excluding metadata fields.
		query_default_field?: [...string]

		// How often to perform a refresh operation, which makes recent
		// changes to the index visible to search. Can be set to `-1` to
		// disable refresh.
		refresh_interval?: string

		// Controls shard allocation for this index. It can be set to:
		// `all` , `primaries` , `new_primaries` , `none`.
		routing_allocation_enable?: string

		// The number of shards a custom routing value can go to. This can
		// be set only on creation.
		routing_partition_size?: number

		// Enables shard rebalancing for this index. It can be set to:
		// `all`, `primaries` , `replicas` , `none`.
		routing_rebalance_enable?: string

		// How long a shard can not receive a search or get request until
		// it’s considered search idle.
		search_idle_after?: string

		// Set which logging level to use for the search slow log, can be:
		// `warn`, `info`, `debug`, `trace`
		search_slowlog_level?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the fetch phase, in time units, e.g. `2s`
		search_slowlog_threshold_fetch_debug?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the fetch phase, in time units, e.g. `5s`
		search_slowlog_threshold_fetch_info?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the fetch phase, in time units, e.g. `500ms`
		search_slowlog_threshold_fetch_trace?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the fetch phase, in time units, e.g. `10s`
		search_slowlog_threshold_fetch_warn?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the query phase, in time units, e.g. `2s`
		search_slowlog_threshold_query_debug?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the query phase, in time units, e.g. `5s`
		search_slowlog_threshold_query_info?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the query phase, in time units, e.g. `500ms`
		search_slowlog_threshold_query_trace?: string

		// Set the cutoff for shard level slow search logging of slow
		// searches in the query phase, in time units, e.g. `10s`
		search_slowlog_threshold_query_warn?: string

		// All raw settings fetched from the cluster.
		settings_raw?: string

		// Whether or not shards should be checked for corruption before
		// opening. When corruption is detected, it will prevent the
		// shard from being opened. Accepts `false`, `true`, `checksum`.
		shard_check_on_startup?: string

		// The field to sort shards in this index by.
		sort_field?: [...string]

		// The direction to sort shards in. Accepts `asc`, `desc`.
		sort_order?: [...string]

		// Period to wait for a response. If no response is received
		// before the timeout expires, the request fails and returns an
		// error. Defaults to `30s`.
		timeout?: string

		// Time to delay the allocation of replica shards which become
		// unassigned because a node has left, in time units, e.g. `10s`
		unassigned_node_left_delayed_timeout?: string

		// The number of shard copies that must be active before
		// proceeding with the operation. Set to `all` or any positive
		// integer up to the total number of shards in the index
		// (number_of_replicas+1). Default: `1`, the primary shard. This
		// value is ignored when running against Serverless projects.
		wait_for_active_shards?: string
	})

	#alias: close({
		// Query used to limit documents the alias can access.
		filter?: string

		// Value used to route indexing operations to a specific shard. If
		// specified, this overwrites the `routing` value for indexing
		// operations.
		index_routing?: string

		// If true, the alias is hidden.
		is_hidden?: bool

		// If true, the index is the write index for the alias.
		is_write_index?: bool

		// Index alias name.
		name!: string

		// Value used to route indexing and search operations to a
		// specific shard.
		routing?: string

		// Value used to route search operations to a specific shard. If
		// specified, this overwrites the routing value for search
		// operations.
		search_routing?: string
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

	#settings: close({
		setting?: matchN(1, [_#defs."/$defs/settings/$defs/setting", [..._#defs."/$defs/settings/$defs/setting"]])
	})

	_#defs: "/$defs/settings/$defs/setting": close({
		// The name of the setting to set and track.
		name!: string

		// The value of the setting to set and track.
		value!: string
	})
}
