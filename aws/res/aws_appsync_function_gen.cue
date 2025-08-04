package res

import "list"

#aws_appsync_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_function")
	close({
		api_id!:           string
		arn?:              string
		code?:             string
		data_source!:      string
		description?:      string
		function_id?:      string
		function_version?: string
		runtime?: matchN(1, [#runtime, list.MaxItems(1) & [...#runtime]])
		id?:             string
		max_batch_size?: number
		sync_config?: matchN(1, [#sync_config, list.MaxItems(1) & [...#sync_config]])
		name!:                      string
		region?:                    string
		request_mapping_template?:  string
		response_mapping_template?: string
	})

	#runtime: close({
		name!:            string
		runtime_version!: string
	})

	#sync_config: close({
		lambda_conflict_handler_config?: matchN(1, [_#defs."/$defs/sync_config/$defs/lambda_conflict_handler_config", list.MaxItems(1) & [..._#defs."/$defs/sync_config/$defs/lambda_conflict_handler_config"]])
		conflict_detection?: string
		conflict_handler?:   string
	})

	_#defs: "/$defs/sync_config/$defs/lambda_conflict_handler_config": close({
		lambda_conflict_handler_arn?: string
	})
}
