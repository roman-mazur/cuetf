package res

import "list"

#azurerm_api_management_diagnostic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_diagnostic")
	close({
		always_log_errors?: bool
		backend_request?: matchN(1, [#backend_request, list.MaxItems(1) & [...#backend_request]])
		api_management_logger_id!:  string
		api_management_name!:       string
		http_correlation_protocol?: string
		id?:                        string
		identifier!:                string
		log_client_ip?:             bool
		operation_name_format?:     string
		backend_response?: matchN(1, [#backend_response, list.MaxItems(1) & [...#backend_response]])
		frontend_request?: matchN(1, [#frontend_request, list.MaxItems(1) & [...#frontend_request]])
		resource_group_name!: string
		frontend_response?: matchN(1, [#frontend_response, list.MaxItems(1) & [...#frontend_response]])
		timeouts?:            #timeouts
		sampling_percentage?: number
		verbosity?:           string
	})

	#backend_request: close({
		data_masking?: matchN(1, [_#defs."/$defs/backend_request/$defs/data_masking", list.MaxItems(1) & [..._#defs."/$defs/backend_request/$defs/data_masking"]])
		body_bytes?: number
		headers_to_log?: [...string]
	})

	#backend_response: close({
		data_masking?: matchN(1, [_#defs."/$defs/backend_response/$defs/data_masking", list.MaxItems(1) & [..._#defs."/$defs/backend_response/$defs/data_masking"]])
		body_bytes?: number
		headers_to_log?: [...string]
	})

	#frontend_request: close({
		data_masking?: matchN(1, [_#defs."/$defs/frontend_request/$defs/data_masking", list.MaxItems(1) & [..._#defs."/$defs/frontend_request/$defs/data_masking"]])
		body_bytes?: number
		headers_to_log?: [...string]
	})

	#frontend_response: close({
		data_masking?: matchN(1, [_#defs."/$defs/frontend_response/$defs/data_masking", list.MaxItems(1) & [..._#defs."/$defs/frontend_response/$defs/data_masking"]])
		body_bytes?: number
		headers_to_log?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/backend_request/$defs/data_masking": close({
		headers?: matchN(1, [_#defs."/$defs/backend_request/$defs/data_masking/$defs/headers", [..._#defs."/$defs/backend_request/$defs/data_masking/$defs/headers"]])
		query_params?: matchN(1, [_#defs."/$defs/backend_request/$defs/data_masking/$defs/query_params", [..._#defs."/$defs/backend_request/$defs/data_masking/$defs/query_params"]])
	})

	_#defs: "/$defs/backend_request/$defs/data_masking/$defs/headers": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/backend_request/$defs/data_masking/$defs/query_params": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/backend_response/$defs/data_masking": close({
		headers?: matchN(1, [_#defs."/$defs/backend_response/$defs/data_masking/$defs/headers", [..._#defs."/$defs/backend_response/$defs/data_masking/$defs/headers"]])
		query_params?: matchN(1, [_#defs."/$defs/backend_response/$defs/data_masking/$defs/query_params", [..._#defs."/$defs/backend_response/$defs/data_masking/$defs/query_params"]])
	})

	_#defs: "/$defs/backend_response/$defs/data_masking/$defs/headers": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/backend_response/$defs/data_masking/$defs/query_params": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/frontend_request/$defs/data_masking": close({
		headers?: matchN(1, [_#defs."/$defs/frontend_request/$defs/data_masking/$defs/headers", [..._#defs."/$defs/frontend_request/$defs/data_masking/$defs/headers"]])
		query_params?: matchN(1, [_#defs."/$defs/frontend_request/$defs/data_masking/$defs/query_params", [..._#defs."/$defs/frontend_request/$defs/data_masking/$defs/query_params"]])
	})

	_#defs: "/$defs/frontend_request/$defs/data_masking/$defs/headers": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/frontend_request/$defs/data_masking/$defs/query_params": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/frontend_response/$defs/data_masking": close({
		headers?: matchN(1, [_#defs."/$defs/frontend_response/$defs/data_masking/$defs/headers", [..._#defs."/$defs/frontend_response/$defs/data_masking/$defs/headers"]])
		query_params?: matchN(1, [_#defs."/$defs/frontend_response/$defs/data_masking/$defs/query_params", [..._#defs."/$defs/frontend_response/$defs/data_masking/$defs/query_params"]])
	})

	_#defs: "/$defs/frontend_response/$defs/data_masking/$defs/headers": close({
		mode!:  string
		value!: string
	})

	_#defs: "/$defs/frontend_response/$defs/data_masking/$defs/query_params": close({
		mode!:  string
		value!: string
	})
}
