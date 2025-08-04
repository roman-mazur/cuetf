package res

#elasticstack_elasticsearch_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_index")
	close({
		analysis_analyzer?:             string
		analysis_char_filter?:          string
		analysis_filter?:               string
		analysis_normalizer?:           string
		analysis_tokenizer?:            string
		analyze_max_token_count?:       number
		auto_expand_replicas?:          string
		blocks_metadata?:               bool
		blocks_read?:                   bool
		blocks_read_only?:              bool
		blocks_read_only_allow_delete?: bool
		blocks_write?:                  bool
		codec?:                         string
		default_pipeline?:              string
		deletion_protection?:           bool
		final_pipeline?:                string
		alias?: matchN(1, [#alias, [...#alias]])
		gc_deletes?:                             string
		highlight_max_analyzed_offset?:          number
		id?:                                     string
		indexing_slowlog_level?:                 string
		indexing_slowlog_source?:                string
		indexing_slowlog_threshold_index_debug?: string
		indexing_slowlog_threshold_index_info?:  string
		indexing_slowlog_threshold_index_trace?: string
		indexing_slowlog_threshold_index_warn?:  string
		load_fixed_bitset_filters_eagerly?:      bool
		mapping_coerce?:                         bool
		mappings?:                               string
		master_timeout?:                         string
		max_docvalue_fields_search?:             number
		max_inner_result_window?:                number
		max_ngram_diff?:                         number
		max_refresh_listeners?:                  number
		max_regex_length?:                       number
		max_rescore_window?:                     number
		max_result_window?:                      number
		max_script_fields?:                      number
		max_shingle_diff?:                       number
		max_terms_count?:                        number
		name!:                                   string
		number_of_replicas?:                     number
		number_of_routing_shards?:               number
		number_of_shards?:                       number
		query_default_field?: [...string]
		refresh_interval?:                     string
		routing_allocation_enable?:            string
		routing_partition_size?:               number
		routing_rebalance_enable?:             string
		search_idle_after?:                    string
		search_slowlog_level?:                 string
		search_slowlog_threshold_fetch_debug?: string
		search_slowlog_threshold_fetch_info?:  string
		search_slowlog_threshold_fetch_trace?: string
		search_slowlog_threshold_fetch_warn?:  string
		search_slowlog_threshold_query_debug?: string
		search_slowlog_threshold_query_info?:  string
		search_slowlog_threshold_query_trace?: string
		search_slowlog_threshold_query_warn?:  string
		settings_raw?:                         string
		shard_check_on_startup?:               string
		sort_field?: [...string]
		sort_order?: [...string]
		timeout?:                              string
		unassigned_node_left_delayed_timeout?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])
		wait_for_active_shards?: string
		settings?: matchN(1, [#settings, [...#settings]])
	})

	#alias: close({
		filter?:         string
		index_routing?:  string
		is_hidden?:      bool
		is_write_index?: bool
		name!:           string
		routing?:        string
		search_routing?: string
	})

	#elasticsearch_connection: close({
		api_key?:      string
		bearer_token?: string
		ca_data?:      string
		ca_file?:      string
		cert_data?:    string
		cert_file?:    string
		endpoints?: [...string]
		es_client_authentication?: string
		headers?: [string]: string
		insecure?: bool
		key_data?: string
		key_file?: string
		password?: string
		username?: string
	})

	#settings: close({
		setting?: matchN(1, [_#defs."/$defs/settings/$defs/setting", [..._#defs."/$defs/settings/$defs/setting"]])
	})

	_#defs: "/$defs/settings/$defs/setting": close({
		name!:  string
		value!: string
	})
}
