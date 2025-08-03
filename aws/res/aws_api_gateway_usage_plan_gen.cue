package res

import "list"

#aws_api_gateway_usage_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_usage_plan")
	close({
		arn?:         string
		description?: string
		api_stages?: matchN(1, [#api_stages, [...#api_stages]])
		quota_settings?: matchN(1, [#quota_settings, list.MaxItems(1) & [...#quota_settings]])
		throttle_settings?: matchN(1, [#throttle_settings, list.MaxItems(1) & [...#throttle_settings]])
		id?:           string
		name!:         string
		product_code?: string
		region?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#api_stages: close({
		api_id!: string
		stage!:  string
		throttle?: matchN(1, [_#defs."/$defs/api_stages/$defs/throttle", [..._#defs."/$defs/api_stages/$defs/throttle"]])
	})

	#quota_settings: close({
		limit!:  number
		offset?: number
		period!: string
	})

	#throttle_settings: close({
		burst_limit?: number
		rate_limit?:  number
	})

	_#defs: "/$defs/api_stages/$defs/throttle": close({
		burst_limit?: number
		path!:        string
		rate_limit?:  number
	})
}
