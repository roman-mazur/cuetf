package res

#aws_bedrockagentcore_agent_runtime: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_agent_runtime")
	close({
		agent_runtime_arn?:     string
		agent_runtime_id?:      string
		agent_runtime_name!:    string
		agent_runtime_version?: string
		description?:           string
		environment_variables?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		lifecycle_configuration?: [...close({
			idle_runtime_session_timeout?: number
			max_lifetime?:                 number
		})]
		role_arn!: string
		agent_runtime_artifact?: matchN(1, [#agent_runtime_artifact, [...#agent_runtime_artifact]])
		authorizer_configuration?: matchN(1, [#authorizer_configuration, [...#authorizer_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		workload_identity_details?: [...close({
			workload_identity_arn?: string
		})]
		network_configuration?: matchN(1, [#network_configuration, [...#network_configuration]])
		protocol_configuration?: matchN(1, [#protocol_configuration, [...#protocol_configuration]])
		request_header_configuration?: matchN(1, [#request_header_configuration, [...#request_header_configuration]])
		timeouts?: #timeouts
	})

	#agent_runtime_artifact: close({
		code_configuration?: matchN(1, [_#defs."/$defs/agent_runtime_artifact/$defs/code_configuration", [..._#defs."/$defs/agent_runtime_artifact/$defs/code_configuration"]])
		container_configuration?: matchN(1, [_#defs."/$defs/agent_runtime_artifact/$defs/container_configuration", [..._#defs."/$defs/agent_runtime_artifact/$defs/container_configuration"]])
	})

	#authorizer_configuration: close({
		custom_jwt_authorizer?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer"]])
	})

	#network_configuration: close({
		network_mode_config?: matchN(1, [_#defs."/$defs/network_configuration/$defs/network_mode_config", [..._#defs."/$defs/network_configuration/$defs/network_mode_config"]])
		network_mode!: string
	})

	#protocol_configuration: close({
		server_protocol?: string
	})

	#request_header_configuration: close({
		request_header_allowlist?: [...string]
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

	_#defs: "/$defs/agent_runtime_artifact/$defs/code_configuration": close({
		code?: matchN(1, [_#defs."/$defs/agent_runtime_artifact/$defs/code_configuration/$defs/code", [..._#defs."/$defs/agent_runtime_artifact/$defs/code_configuration/$defs/code"]])
		entry_point!: [...string]
		runtime!: string
	})

	_#defs: "/$defs/agent_runtime_artifact/$defs/code_configuration/$defs/code": close({
		s3?: matchN(1, [_#defs."/$defs/agent_runtime_artifact/$defs/code_configuration/$defs/code/$defs/s3", [..._#defs."/$defs/agent_runtime_artifact/$defs/code_configuration/$defs/code/$defs/s3"]])
	})

	_#defs: "/$defs/agent_runtime_artifact/$defs/code_configuration/$defs/code/$defs/s3": close({
		bucket!:     string
		prefix!:     string
		version_id?: string
	})

	_#defs: "/$defs/agent_runtime_artifact/$defs/container_configuration": close({
		container_uri!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer": close({
		allowed_audience?: [...string]
		allowed_clients?: [...string]
		discovery_url!: string
	})

	_#defs: "/$defs/network_configuration/$defs/network_mode_config": close({
		security_groups!: [...string]
		subnets!: [...string]
	})
}
