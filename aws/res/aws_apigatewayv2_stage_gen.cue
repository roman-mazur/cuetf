package res

import "list"

#aws_apigatewayv2_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_apigatewayv2_stage")
	close({
		api_id!:                string
		arn?:                   string
		auto_deploy?:           bool
		client_certificate_id?: string
		deployment_id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		description?:   string
		execution_arn?: string
		id?:            string
		access_log_settings?: matchN(1, [#access_log_settings, list.MaxItems(1) & [...#access_log_settings]])
		invoke_url?: string
		name!:       string
		default_route_settings?: matchN(1, [#default_route_settings, list.MaxItems(1) & [...#default_route_settings]])
		stage_variables?: [string]: string
		tags?: [string]:            string
		tags_all?: [string]:        string
		route_settings?: matchN(1, [#route_settings, [...#route_settings]])
	})

	#access_log_settings: close({
		destination_arn!: string
		format!:          string
	})

	#default_route_settings: close({
		data_trace_enabled?:       bool
		detailed_metrics_enabled?: bool
		logging_level?:            string
		throttling_burst_limit?:   number
		throttling_rate_limit?:    number
	})

	#route_settings: close({
		data_trace_enabled?:       bool
		detailed_metrics_enabled?: bool
		logging_level?:            string
		route_key!:                string
		throttling_burst_limit?:   number
		throttling_rate_limit?:    number
	})
}
