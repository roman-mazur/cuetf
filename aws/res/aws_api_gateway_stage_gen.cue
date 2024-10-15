package res

import "list"

#aws_api_gateway_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_stage")
	arn?:                   string
	cache_cluster_enabled?: bool
	cache_cluster_size?:    string
	client_certificate_id?: string
	deployment_id!:         string
	description?:           string
	documentation_version?: string
	execution_arn?:         string
	id?:                    string
	invoke_url?:            string
	rest_api_id!:           string
	stage_name!:            string
	tags?: [string]:      string
	tags_all?: [string]:  string
	variables?: [string]: string
	web_acl_arn?:          string
	xray_tracing_enabled?: bool
	access_log_settings?: #access_log_settings | list.MaxItems(1) & [...#access_log_settings]
	canary_settings?: #canary_settings | list.MaxItems(1) & [...#canary_settings]

	#access_log_settings: {
		destination_arn!: string
		format!:          string
	}

	#canary_settings: {
		percent_traffic?: number
		stage_variable_overrides?: [string]: string
		use_stage_cache?: bool
	}
}
