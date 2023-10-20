package res

import "list"

#aws_api_gateway_usage_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_usage_plan")
	arn?:          string
	description?:  string
	id?:           string
	name:          string
	product_code?: string
	tags?: [string]: string
	tags_all?: [string]: string
	api_stages?:        #api_stages | [...#api_stages]
	quota_settings?:    #quota_settings | list.MaxItems(1) & [...#quota_settings]
	throttle_settings?: #throttle_settings | list.MaxItems(1) & [...#throttle_settings]

	#api_stages: {
		api_id:    string
		stage:     string
		throttle?: #api_stages.#throttle | [...#api_stages.#throttle]

		#throttle: {
			burst_limit?: number
			path:         string
			rate_limit?:  number
		}
	}

	#quota_settings: {
		limit:   number
		offset?: number
		period:  string
	}

	#throttle_settings: {
		burst_limit?: number
		rate_limit?:  number
	}
}
