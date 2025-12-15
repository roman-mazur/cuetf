package res

import "list"

#aws_api_gateway_usage_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_api_gateway_usage_plan")
	close({
		arn?: string
		api_stages?: matchN(1, [#api_stages, [...#api_stages]])
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		quota_settings?: matchN(1, [#quota_settings, list.MaxItems(1) & [...#quota_settings]])
		name!:         string
		product_code?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		throttle_settings?: matchN(1, [#throttle_settings, list.MaxItems(1) & [...#throttle_settings]])
	})

	#api_stages: close({
		throttle?: matchN(1, [_#defs."/$defs/api_stages/$defs/throttle", [..._#defs."/$defs/api_stages/$defs/throttle"]])
		api_id!: string
		stage!:  string
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
