package res

import "list"

#aws_appsync_resolver: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appsync_resolver")
	api_id!:            string
	arn?:               string
	code?:              string
	data_source?:       string
	field!:             string
	id?:                string
	kind?:              string
	max_batch_size?:    number
	request_template?:  string
	response_template?: string
	type!:              string
	caching_config?: #caching_config | list.MaxItems(1) & [...#caching_config]
	pipeline_config?: #pipeline_config | list.MaxItems(1) & [...#pipeline_config]
	runtime?: #runtime | list.MaxItems(1) & [...#runtime]
	sync_config?: #sync_config | list.MaxItems(1) & [...#sync_config]

	#caching_config: {
		caching_keys?: [...string]
		ttl?: number
	}

	#pipeline_config: functions?: [...string]

	#runtime: {
		name!:            string
		runtime_version!: string
	}

	#sync_config: {
		conflict_detection?: string
		conflict_handler?:   string
		lambda_conflict_handler_config?: #sync_config.#lambda_conflict_handler_config | list.MaxItems(1) & [...#sync_config.#lambda_conflict_handler_config]

		#lambda_conflict_handler_config: lambda_conflict_handler_arn?: string
	}
}
