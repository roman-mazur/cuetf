package res

import "list"

#aws_apigatewayv2_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_stage")
	api_id!:                string
	arn?:                   string
	auto_deploy?:           bool
	client_certificate_id?: string
	deployment_id?:         string
	description?:           string
	execution_arn?:         string
	id?:                    string
	invoke_url?:            string
	name!:                  string
	stage_variables?: [string]: string
	tags?: [string]:            string
	tags_all?: [string]:        string
	access_log_settings?: #access_log_settings | list.MaxItems(1) & [...#access_log_settings]
	default_route_settings?: #default_route_settings | list.MaxItems(1) & [...#default_route_settings]
	route_settings?: #route_settings | [...#route_settings]

	#access_log_settings: {
		destination_arn!: string
		format!:          string
	}

	#default_route_settings: {
		data_trace_enabled?:       bool
		detailed_metrics_enabled?: bool
		logging_level?:            string
		throttling_burst_limit?:   number
		throttling_rate_limit?:    number
	}

	#route_settings: {
		data_trace_enabled?:       bool
		detailed_metrics_enabled?: bool
		logging_level?:            string
		route_key!:                string
		throttling_burst_limit?:   number
		throttling_rate_limit?:    number
	}
}
