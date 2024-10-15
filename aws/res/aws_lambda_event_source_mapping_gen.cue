package res

import "list"

#aws_lambda_event_source_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_event_source_mapping")
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
	starting_position?:           string
	starting_position_timestamp?: string
	state?:                       string
	state_transition_reason?:     string
	tags?: [string]:     string
	tags_all?: [string]: string
	topics?: [...string]
	tumbling_window_in_seconds?: number
	uuid?:                       string
	amazon_managed_kafka_event_source_config?: #amazon_managed_kafka_event_source_config | list.MaxItems(1) & [...#amazon_managed_kafka_event_source_config]
	destination_config?: #destination_config | list.MaxItems(1) & [...#destination_config]
	document_db_event_source_config?: #document_db_event_source_config | list.MaxItems(1) & [...#document_db_event_source_config]
	filter_criteria?: #filter_criteria | list.MaxItems(1) & [...#filter_criteria]
	scaling_config?: #scaling_config | list.MaxItems(1) & [...#scaling_config]
	self_managed_event_source?: #self_managed_event_source | list.MaxItems(1) & [...#self_managed_event_source]
	self_managed_kafka_event_source_config?: #self_managed_kafka_event_source_config | list.MaxItems(1) & [...#self_managed_kafka_event_source_config]
	source_access_configuration?: #source_access_configuration | list.MaxItems(22) & [...#source_access_configuration]

	#amazon_managed_kafka_event_source_config: consumer_group_id?: string

	#destination_config: {
		on_failure?: #destination_config.#on_failure | list.MaxItems(1) & [...#destination_config.#on_failure]

		#on_failure: destination_arn!: string
	}

	#document_db_event_source_config: {
		collection_name?: string
		database_name!:   string
		full_document?:   string
	}

	#filter_criteria: {
		filter?: #filter_criteria.#filter | list.MaxItems(10) & [...#filter_criteria.#filter]

		#filter: pattern?: string
	}

	#scaling_config: maximum_concurrency?: number

	#self_managed_event_source: endpoints!: [string]: string

	#self_managed_kafka_event_source_config: consumer_group_id?: string

	#source_access_configuration: {
		type!: string
		uri!:  string
	}
}
