package res

#aws_bedrockagentcore_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagentcore_gateway")
	close({
		authorizer_type!: string
		description?:     string
		exception_level?: string
		gateway_arn?:     string
		gateway_id?:      string
		gateway_url?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		kms_key_arn?: string
		name!:        string
		authorizer_configuration?: matchN(1, [#authorizer_configuration, [...#authorizer_configuration]])
		protocol_type!: string
		role_arn!:      string
		protocol_configuration?: matchN(1, [#protocol_configuration, [...#protocol_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		workload_identity_details?: [...close({
			workload_identity_arn?: string
		})]
		timeouts?: #timeouts
	})

	#authorizer_configuration: close({
		custom_jwt_authorizer?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer"]])
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

	_#defs: "/$defs/protocol_configuration/$defs/mcp": close({
		instructions?: string
		search_type?:  string
		supported_versions?: [...string]
	})
}
