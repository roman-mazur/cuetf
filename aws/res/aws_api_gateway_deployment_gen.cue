package res

import "list"

#aws_api_gateway_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_deployment")
	created_date?:      string
	description?:       string
	execution_arn?:     string
	id?:                string
	invoke_url?:        string
	rest_api_id!:       string
	stage_description?: string
	stage_name?:        string
	triggers?: [string]:  string
	variables?: [string]: string
	canary_settings?: #canary_settings | list.MaxItems(1) & [...#canary_settings]

	#canary_settings: {
		percent_traffic?: number
		stage_variable_overrides?: [string]: string
		use_stage_cache?: bool
	}
}
