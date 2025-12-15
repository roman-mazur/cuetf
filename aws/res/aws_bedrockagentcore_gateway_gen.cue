package res

#aws_bedrockagentcore_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_gateway")
	close({
		authorizer_type!: string
		authorizer_configuration?: matchN(1, [#authorizer_configuration, [...#authorizer_configuration]])
		description?:     string
		exception_level?: string
		gateway_arn?:     string
		gateway_id?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		gateway_url?: string
		kms_key_arn?: string
		interceptor_configuration?: matchN(1, [#interceptor_configuration, [...#interceptor_configuration]])
		protocol_configuration?: matchN(1, [#protocol_configuration, [...#protocol_configuration]])
		name!:          string
		protocol_type!: string
		role_arn!:      string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
		workload_identity_details?: [...close({
			workload_identity_arn?: string
		})]
	})

	#authorizer_configuration: close({
		custom_jwt_authorizer?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer"]])
	})

	#interceptor_configuration: close({
		input_configuration?: matchN(1, [_#defs."/$defs/interceptor_configuration/$defs/input_configuration", [..._#defs."/$defs/interceptor_configuration/$defs/input_configuration"]])
		interceptor?: matchN(1, [_#defs."/$defs/interceptor_configuration/$defs/interceptor", [..._#defs."/$defs/interceptor_configuration/$defs/interceptor"]])
		interception_points!: [...string]
	})

	#protocol_configuration: close({
		mcp?: matchN(1, [_#defs."/$defs/protocol_configuration/$defs/mcp", [..._#defs."/$defs/protocol_configuration/$defs/mcp"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer": close({
		allowed_audience?: [...string]
		allowed_clients?: [...string]
		discovery_url!: string
	})

	_#defs: "/$defs/interceptor_configuration/$defs/input_configuration": close({
		pass_request_headers!: bool
	})

	_#defs: "/$defs/interceptor_configuration/$defs/interceptor": close({
		lambda?: matchN(1, [_#defs."/$defs/interceptor_configuration/$defs/interceptor/$defs/lambda", [..._#defs."/$defs/interceptor_configuration/$defs/interceptor/$defs/lambda"]])
	})

	_#defs: "/$defs/interceptor_configuration/$defs/interceptor/$defs/lambda": close({
		arn!: string
	})

	_#defs: "/$defs/protocol_configuration/$defs/mcp": close({
		instructions?: string
		search_type?:  string
		supported_versions?: [...string]
	})
}
