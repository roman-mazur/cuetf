package res

import "list"

#aws_appsync_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_function")
	api_id!:                    string
	arn?:                       string
	code?:                      string
	data_source!:               string
	description?:               string
	function_id?:               string
	function_version?:          string
	id?:                        string
	max_batch_size?:            number
	name!:                      string
	request_mapping_template?:  string
	response_mapping_template?: string
	runtime?: #runtime | list.MaxItems(1) & [...#runtime]
	sync_config?: #sync_config | list.MaxItems(1) & [...#sync_config]

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
