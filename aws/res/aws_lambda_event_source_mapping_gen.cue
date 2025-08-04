package res

import "list"

#aws_lambda_event_source_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_event_source_mapping")
	close({
		arn?:                            string
		batch_size?:                     number
		bisect_batch_on_function_error?: bool
		enabled?:                        bool
		event_source_arn?:               string
		function_arn?:                   string
		function_name!:                  string
		function_response_types?: [...string]
		id?:                                 string
		kms_key_arn?:                        string
		last_modified?:                      string
		last_processing_result?:             string
		maximum_batching_window_in_seconds?: number
		maximum_record_age_in_seconds?:      number
		maximum_retry_attempts?:             number
		parallelization_factor?:             number
		queues?: [...string]
		amazon_managed_kafka_event_source_config?: matchN(1, [#amazon_managed_kafka_event_source_config, list.MaxItems(1) & [...#amazon_managed_kafka_event_source_config]])
		region?: string
		destination_config?: matchN(1, [#destination_config, list.MaxItems(1) & [...#destination_config]])
		starting_position?: string
		document_db_event_source_config?: matchN(1, [#document_db_event_source_config, list.MaxItems(1) & [...#document_db_event_source_config]])
		starting_position_timestamp?: string
		state?:                       string
		state_transition_reason?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		topics?: [...string]
		tumbling_window_in_seconds?: number
		uuid?:                       string
		filter_criteria?: matchN(1, [#filter_criteria, list.MaxItems(1) & [...#filter_criteria]])
		metrics_config?: matchN(1, [#metrics_config, list.MaxItems(1) & [...#metrics_config]])
		provisioned_poller_config?: matchN(1, [#provisioned_poller_config, list.MaxItems(1) & [...#provisioned_poller_config]])
		scaling_config?: matchN(1, [#scaling_config, list.MaxItems(1) & [...#scaling_config]])
		self_managed_event_source?: matchN(1, [#self_managed_event_source, list.MaxItems(1) & [...#self_managed_event_source]])
		self_managed_kafka_event_source_config?: matchN(1, [#self_managed_kafka_event_source_config, list.MaxItems(1) & [...#self_managed_kafka_event_source_config]])
		source_access_configuration?: matchN(1, [#source_access_configuration, list.MaxItems(22) & [...#source_access_configuration]])
	})

	#amazon_managed_kafka_event_source_config: close({
		consumer_group_id?: string
	})

	#destination_config: close({
		on_failure?: matchN(1, [_#defs."/$defs/destination_config/$defs/on_failure", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/on_failure"]])
	})

	#document_db_event_source_config: close({
		collection_name?: string
		database_name!:   string
		full_document?:   string
	})

	#filter_criteria: close({
		filter?: matchN(1, [_#defs."/$defs/filter_criteria/$defs/filter", list.MaxItems(10) & [..._#defs."/$defs/filter_criteria/$defs/filter"]])
	})

	#metrics_config: close({
		metrics!: [...string]
	})

	#provisioned_poller_config: close({
		maximum_pollers?: number
		minimum_pollers?: number
	})

	#scaling_config: close({
		maximum_concurrency?: number
	})

	#self_managed_event_source: close({
		endpoints!: [string]: string
	})

	#self_managed_kafka_event_source_config: close({
		consumer_group_id?: string
	})

	#source_access_configuration: close({
		type!: string
		uri!:  string
	})

	_#defs: "/$defs/destination_config/$defs/on_failure": close({
		destination_arn!: string
	})

	_#defs: "/$defs/filter_criteria/$defs/filter": close({
		pattern?: string
	})
}
