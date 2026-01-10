package res

#aws_cloudfront_continuous_deployment_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_continuous_deployment_policy")
	close({
		staging_distribution_dns_names?: matchN(1, [#staging_distribution_dns_names, [...#staging_distribution_dns_names]])
		arn?:                string
		enabled!:            bool
		etag?:               string
		id?:                 string
		last_modified_time?: string
		traffic_config?: matchN(1, [#traffic_config, [...#traffic_config]])
	})

	#staging_distribution_dns_names: close({
		items?: [...string]
		quantity!: number
	})

	#traffic_config: close({
		single_header_config?: matchN(1, [_#defs."/$defs/traffic_config/$defs/single_header_config", [..._#defs."/$defs/traffic_config/$defs/single_header_config"]])
		single_weight_config?: matchN(1, [_#defs."/$defs/traffic_config/$defs/single_weight_config", [..._#defs."/$defs/traffic_config/$defs/single_weight_config"]])
		type!: string
	})

	_#defs: "/$defs/traffic_config/$defs/single_header_config": close({
		header!: string
		value!:  string
	})

	_#defs: "/$defs/traffic_config/$defs/single_weight_config": close({
		session_stickiness_config?: matchN(1, [_#defs."/$defs/traffic_config/$defs/single_weight_config/$defs/session_stickiness_config", [..._#defs."/$defs/traffic_config/$defs/single_weight_config/$defs/session_stickiness_config"]])
		weight!: number
	})

	_#defs: "/$defs/traffic_config/$defs/single_weight_config/$defs/session_stickiness_config": close({
		idle_ttl!:    number
		maximum_ttl!: number
	})
}
